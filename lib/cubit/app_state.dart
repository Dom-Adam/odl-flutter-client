part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState(this.show404, this.authenticationStatus, this.isSignUpPage);

  const AppState.loggedIn()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.authenticated,
        isSignUpPage = false;

  const AppState.loggedOut()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUpPage = false;

  const AppState.loading()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unknown,
        isSignUpPage = false;

  const AppState.signUp()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unauthenticated,
        isSignUpPage = true;

  AppState unknown(AuthenticationStatus status) {
    return AppState(true, status, false);
  }

  final bool show404;
  final AuthenticationStatus authenticationStatus;
  final bool isSignUpPage;

  @override
  List<Object> get props => [show404, authenticationStatus, isSignUpPage];
}
