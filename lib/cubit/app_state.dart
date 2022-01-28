part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState(
    this.show404,
    this.authenticationStatus,
    this.isSignUpPage,
    this.isMatchActive,
  );

  const AppState.loggedOut()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUpPage = false,
        isMatchActive = false;

  const AppState.loading()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUpPage = false,
        isMatchActive = false;

  const AppState.signUp()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUpPage = true,
        isMatchActive = false;

  const AppState.match()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUpPage = false,
        isMatchActive = true;

  const AppState.loggedIn()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUpPage = false,
        isMatchActive = false;

  AppState unknown(
      AuthenticationStatus authenticationStatus, bool matchStatus) {
    return AppState(true, authenticationStatus, false, matchStatus);
  }

  final bool show404;
  final AuthenticationStatus authenticationStatus;
  final bool isSignUpPage;
  final bool isMatchActive;

  @override
  List<Object> get props =>
      [show404, authenticationStatus, isSignUpPage, isMatchActive];
}
