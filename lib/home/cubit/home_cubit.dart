import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required MatchRepository matchRepository, required AuthenticationRepository authenticationRepository})
      : _matchRepository = matchRepository,
      _authenticationRepository = authenticationRepository,
        super(const HomeInitial()) {
    _matchStatusSubscription =
        _matchRepository.matchStatusSubject.listen((value) {
      matchStatusChanged(value);
    });

    _matchRepository.getMatchIdStream(_authenticationRepository.userId);
  }

  final AuthenticationRepository _authenticationRepository;
  final MatchRepository _matchRepository;
  late final StreamSubscription<MatchStatus> _matchStatusSubscription;
  late final StreamSubscription<OperationResponse> _getMatchId;

  void matchStatusChanged(MatchStatus matchStatus) =>
      emit(HomeMatchStatusChanged(matchStatus));

  void searchOpponent() {
    _matchRepository.searchOpponent();
  }

  @override
  Future<void> close() {
    print('home cubit closed');
    _matchStatusSubscription.cancel();
    _getMatchId.cancel();
    return super.close();
  }
}
