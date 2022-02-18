import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
  }

  final String userId;
  final MatchRepository _matchRepository;

  @override
  Future<void> close() {
    print('home cubit closed');
    return super.close();
  }
}
