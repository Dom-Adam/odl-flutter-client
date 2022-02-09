part of 'match_bloc.dart';

abstract class MatchEvent extends Equatable {
  const MatchEvent();

  @override
  List<Object> get props => [];
}

class MatchUpdated extends MatchEvent {
  const MatchUpdated({
    required this.player1Legs,
    required this.player1Points,
    required this.player2Legs,
    required this.player2Points,
    required this.legId,
    required this.currentlyThrowing,
  });

  final int player1Legs;
  final int player1Points;
  final int player2Legs;
  final int player2Points;
  final String legId;
  final int currentlyThrowing;

  @override
  List<Object> get props => [
        player1Legs,
        player1Points,
        player2Legs,
        player2Points,
        legId,
        currentlyThrowing
      ];
}

class MatchScoreSubmitted extends MatchEvent {
  const MatchScoreSubmitted();
}

class MatchScoreChanged extends MatchEvent {
  const MatchScoreChanged(this.score);

  final String score;

  @override
  List<Object> get props => [score];
}

class MatchSegmentChanged extends MatchEvent {
  const MatchSegmentChanged(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}
