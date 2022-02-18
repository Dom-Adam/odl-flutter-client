part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool show404,
    required bool isSignUpPage,
    required AuthenticationStatus authenticationStatus,
    required String userId,
    required String matchId,
    required String legId,
    required String player1,
    required String player2,
    required int whoAmI,
    required bool isMatchActive,
  }) = _AppState;
}
