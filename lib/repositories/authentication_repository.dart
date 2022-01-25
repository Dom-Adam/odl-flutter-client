import 'dart:async';
import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:odl_flutter_client/main.dart';
import 'package:http/http.dart' as http;

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

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
    _controller.add(AuthenticationStatus.authenticated);
  }

  Future<void> logOut() async {
    await secureStorage.delete(key: 'jwtToken');
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  Future<String?> checkAuthStatus() async {
    print('check auth status');
    String? jwt = await secureStorage.read(key: 'jwtToken');

    if (jwt != null && !JwtDecoder.isExpired(jwt)) {
      _controller.add(AuthenticationStatus.authenticated);
      return jwt;
    } else {
      _controller.add(AuthenticationStatus.unauthenticated);
      return null;
    }
  }

  void dispose() => _controller.close();
}
