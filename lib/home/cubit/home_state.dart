part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState(this.matchStatus);

  final MatchStatus matchStatus;

  @override
  List<Object> get props => [matchStatus];
}

class HomeInitial extends HomeState {
  const HomeInitial() : super(MatchStatus.inactive);
}

class HomeMatchStatusChanged extends HomeState {
  const HomeMatchStatusChanged(MatchStatus matchStatus) : super(matchStatus);
}
