import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:odl_flutter_client/app.dart';
import 'package:odl_flutter_client/common/constants.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

const secureStorage = FlutterSecureStorage();
Client graphqlClient = Client(link: HttpLink('http$baseUrl/graphql'));

void main() {
  runApp(
    MyApp(
      authenticationRepository: AuthenticationRepository(),
    ),
  );
}
