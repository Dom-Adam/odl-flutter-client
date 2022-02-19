part of 'match_bloc.dart';

@freezed
class MatchState with _$MatchState {
  const factory MatchState({
    required int player1Legs,
    required int player1Points,
    required int player2Legs,
    required int player2Points,
    required String matchId,
    required String legId,
    required String player1,
    required String player2,
    required int whoAmI,
    required int currentlyThrowing,
    required String scoreField,
    @Default([false, false]) List<bool> selections,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Score.pure()) Score score,
    required bool isFinished,
  }) = _MatchState;
}
