import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class AuthInfo {
  AuthInfo({
    required this.authenticationStatus,
    required this.userId,
  });

  AuthenticationStatus authenticationStatus;
  String userId;
}
