import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class AppConfiguration {
  const AppConfiguration.home()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.authenticated;

  const AppConfiguration.login()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unauthenticated;

  const AppConfiguration.splash()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unknown;

  const AppConfiguration.unknown()
      : isUnknown = true,
        authenticationStatus = AuthenticationStatus.unknown;

  final bool isUnknown;
  final AuthenticationStatus authenticationStatus;

  bool get isHomePage =>
      authenticationStatus == AuthenticationStatus.authenticated;

  bool get isLoginPage =>
      authenticationStatus == AuthenticationStatus.unauthenticated;

  bool get isSplashPage => authenticationStatus == AuthenticationStatus.unknown;
}
