import 'dart:async';
import 'dart:convert';
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:odl_flutter_client/common/constants.dart';
import 'package:odl_flutter_client/main.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/web_socket_channel.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  late String userId;

  Stream<AuthenticationStatus> get status async* {
    yield AuthenticationStatus.unknown;
    yield* _controller.stream;
  }

  Future<Map<String, dynamic>> getToken(
    String username,
    String password,
  ) async {
    final request = await http.post(
      Uri.parse('http://localhost:3000/auth/login'),
      body: jsonEncode({'username': username, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );

    if (request.statusCode == 201) {
      return jsonDecode(request.body);
    } else {
      throw Exception('authentication failed');
    }
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    Map<String, dynamic> response = await getToken(username, password);

    await secureStorage.write(key: 'jwtToken', value: response['access_token']);

    graphqlClient = Client(
      link: Link.split(
        (request) => request.toString().contains('subscription'),
        WebSocketLink(null, channelGenerator: () {
          return WebSocketChannel.connect(
            Uri.parse('ws://localhost:3000/graphql'),
            protocols: ['graphql-ws'],
          );
        }),
        HttpLink('http://localhost:3000/graphql', defaultHeaders: {
          'Authorization': 'Bearer ${response['access_token']}'
        }),
      ),
    );

    userId = JwtDecoder.decode(response['access_token'])['sub'];
    _controller.add(AuthenticationStatus.authenticated);
  }

  Future<void> logOut() async {
    await secureStorage.delete(key: JWT_TOKEN);
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  Future<String?> checkAuthStatus() async {
    print('check auth status');
    String? jwt = await secureStorage.read(key: JWT_TOKEN);

    if (jwt != null && !JwtDecoder.isExpired(jwt)) {
      _controller.add(AuthenticationStatus.authenticated);
      return jwt;
    } else {
      _controller.add(AuthenticationStatus.unauthenticated);
      return null;
    }
  }

  void dispose() {
    print('authentication repository dispose');
    _controller.close();
  }
}
