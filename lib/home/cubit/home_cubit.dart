import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required MatchRepository matchRepository,
    required this.userId,
  })  : _matchRepository = matchRepository,
        super(const HomeInitial()) {
    _matchRepository.matchStatus.listen((event) {
      emit(HomeMatchStatusChanged(event));
    });

    getMatchIdSubscription = _matchRepository.getMatchId(userId);
  }

  final String userId;
  final MatchRepository _matchRepository;
  late final StreamSubscription<
          OperationResponse<GGetMatchIdData, GGetMatchIdVars>>
      getMatchIdSubscription;

  Future<void> searchOpponent() async {
    try {
      await _matchRepository.searchOpponent();
    } catch (error) {
      _matchRepository.foundOpponent();
    }
  }

  @override
  Future<void> close() {
    print('home cubit closed');
    getMatchIdSubscription.cancel();
    return super.close();
  }
}
