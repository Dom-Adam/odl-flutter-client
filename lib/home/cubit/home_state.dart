part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState(this.searchingOpponent);

  final bool searchingOpponent;

  @override
  List<Object> get props => [searchingOpponent];
}

class HomeInitial extends HomeState {
  const HomeInitial() : super(false);
}

class HomeMatchStatusChanged extends HomeState {
  const HomeMatchStatusChanged(bool searchingOpponent)
      : super(searchingOpponent);
}
