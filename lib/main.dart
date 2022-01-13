import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:odl_flutter_client/app.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

const secureStorage = FlutterSecureStorage();

void main() {
  runApp(
    MyApp(
      authenticationRepository: AuthenticationRepository(),
    ),
  );
}
