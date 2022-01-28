import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class AppConfiguration {
  const AppConfiguration.home()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUp = false,
        isMatchActive = false;

  const AppConfiguration.login()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUp = false,
        isMatchActive = false;

  const AppConfiguration.splash()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUp = false,
        isMatchActive = false;

  const AppConfiguration.signUp()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUp = true,
        isMatchActive = false;

  const AppConfiguration.unknown()
      : isUnknown = true,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUp = false,
        isMatchActive = false;

  const AppConfiguration.match()
      : isUnknown = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUp = false,
        isMatchActive = true;

  final bool isUnknown;
  final AuthenticationStatus authenticationStatus;
  final bool isSignUp;
  final bool isMatchActive;

  bool get isHomePage =>
      authenticationStatus == AuthenticationStatus.authenticated &&
      !isMatchActive;

  bool get isLoginPage =>
      authenticationStatus == AuthenticationStatus.unauthenticated && !isSignUp;

  bool get isSplashPage => authenticationStatus == AuthenticationStatus.unknown;

  bool get isSignUpPage => isSignUp;

  bool get isMatchPage => isMatchActive;
}
