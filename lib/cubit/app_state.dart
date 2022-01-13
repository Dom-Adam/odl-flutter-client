part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState(this.show404, this.authenticationStatus);

  const AppState.loggedIn()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.authenticated;

  const AppState.loggedOut()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unauthenticated;

  const AppState.loading()
      : show404 = false,
        authenticationStatus = AuthenticationStatus.unknown;

  AppState unknown(AuthenticationStatus status) {
    return AppState(true, status);
  }

  final bool show404;
  final AuthenticationStatus authenticationStatus;

  @override
  List<Object> get props => [show404, authenticationStatus];
}
