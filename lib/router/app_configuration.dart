import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class AppConfiguration {
  const AppConfiguration.home()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUp = false;

  const AppConfiguration.login()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUp = false;

  const AppConfiguration.splash()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUp = false;

  const AppConfiguration.signUp()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUp = true;

  const AppConfiguration.unknown()
      : isUnknown = true,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUp = false;

  final bool isUnknown;
  final AuthenticationStatus authenticationStatus;
  final bool isSignUp;

  bool get isHomePage =>
      authenticationStatus == AuthenticationStatus.authenticated;

  bool get isLoginPage =>
      authenticationStatus == AuthenticationStatus.unauthenticated && !isSignUp;

  bool get isSplashPage => authenticationStatus == AuthenticationStatus.unknown;

  bool get isSignUpPage => isSignUp;
}
