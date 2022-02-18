part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authInfoChanged({
    required AuthenticationStatus authenticationStatus,
    required String userId,
  }) = AuthenticationAuthInfoChanged;

  const factory AuthenticationEvent.logOutRequested() =
      AuthenticationLogoutRequested;
}
