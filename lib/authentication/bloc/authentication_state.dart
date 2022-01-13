part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState(this.status);

  final AuthenticationStatus status;

  @override
  List<Object> get props => [status];
}

class AuthenticationInitial extends AuthenticationState {
  const AuthenticationInitial() : super(AuthenticationStatus.unknown);
}

class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated()
      : super(AuthenticationStatus.authenticated);
}

class AuthenticationUnauthenticated extends AuthenticationState {
  const AuthenticationUnauthenticated()
      : super(AuthenticationStatus.unauthenticated);
}
