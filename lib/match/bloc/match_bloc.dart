import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odl_flutter_client/common/constants.dart';
import 'package:odl_flutter_client/common/models/score.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';
import 'package:flutter/foundation.dart';

part 'match_event.dart';
part 'match_state.dart';
part 'match_bloc.freezed.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc({
    required this.matchId,
    required this.legId,
    required this.player1,
    required this.player2,
    required this.whoAmI,
    required MatchRepository matchRepository,
    required AppCubit appCubit,
  })  : _matchRepository = matchRepository,
        _appCubit = appCubit,
        super(MatchState(
          matchId: matchId,
          legId: legId,
          player1Legs: 0,
          player1Points: 501,
          player2Legs: 0,
          player2Points: 501,
          player1: player1,
          player2: player2,
          currentlyThrowing: 1,
          whoAmI: whoAmI,
          scoreField: '',
          isFinished: false,
        )) {
    on<MatchUpdated>((event, emit) {
      emit(state.copyWith(
        player1Legs: event.player1Legs,
        player1Points: event.player1Points,
        player2Legs: event.player2Legs,
        player2Points: event.player2Points,
        legId: event.legId,
        currentlyThrowing: event.currentlyThrowing,
        isFinished: event.isFinished,
      ));
    });

    on<MatchScoreChanged>((event, emit) {
      final scoreField = event.score == backspace
          ? state.scoreField.substring(0, state.scoreField.length - 1)
          : state.scoreField + event.score;
      final score = Score.dirty(scoreField);

      emit(state.copyWith(
        score: score,
        status: Formz.validate([score]),
        scoreField: scoreField,
        selections: scoreField == '25'
            ? [state.selections[0], false]
            : state.selections,
      ));
    });

    on<MatchScoreSubmitted>((event, emit) async {
      if (state.status.isValidated) {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));

        final segment = state.selections[0]
            ? 2
            : state.selections[1]
                ? 3
                : 1;

        await _matchRepository.updateMatch(
          field: int.parse(state.score.value),
          legId: state.legId,
          matchId: state.matchId,
          segment: segment,
        );
        emit(state.copyWith(status: FormzStatus.submissionSuccess));

        emit(state.copyWith(
          status: FormzStatus.pure,
          score: const Score.pure(),
          scoreField: '',
          selections: [false, false],
        ));
      }
    });

    on<MatchSegmentChanged>((event, emit) {
      final eventIndex = event.index;
      final selection = !state.selections[eventIndex];
      emit(state.copyWith(
          selections: List.generate(
        2,
        (index) => index == eventIndex ? selection : false,
      )));
    });

    _matchSubscription =
        _matchRepository.listenToMatch(matchId).listen((event) {
      if (event.data == null) {
        return;
      }
      final leg =
          event.data?.listenToMatch.legs.where((leg) => !leg.isFinished);
      final legId = leg == null || leg.isEmpty ? state.legId : leg.first.id;
      final currentLeg =
          event.data?.listenToMatch.legs.firstWhere((leg) => leg.id == legId);
      final isNewLeg =
          event.data?.listenToMatch.legs.every((p0) => p0.isFinished) ?? false;
      final isNewVisit =
          currentLeg?.visits.every((p0) => p0.isFinished) ?? false;

      add(MatchUpdated(
        player1Legs: event.data?.listenToMatch.legs
                .where((p0) => p0.points[0] == 0)
                .length ??
            state.player1Legs,
        player1Points: isNewLeg
            ? 501
            : event.data?.listenToMatch.legs
                    .firstWhere((p0) => p0.id == legId)
                    .points
                    .first ??
                state.player1Points,
        player2Legs: event.data?.listenToMatch.legs
                .where((p0) => p0.points[1] == 0)
                .length ??
            state.player2Legs,
        player2Points: isNewLeg
            ? 501
            : event.data?.listenToMatch.legs
                    .firstWhere((p0) => p0.id == legId)
                    .points
                    .last ??
                state.player2Points,
        legId: legId,
        currentlyThrowing: getCurrentlyThrowing(
          newLeg: isNewLeg,
          legs: event.data!.listenToMatch.legs.length,
          newVisit: isNewVisit,
        ),
        isFinished: event.data?.listenToMatch.isFinished ?? false,
      ));
    });

    on<MatchRequestFinish>((event, emit) {
      print('match request finish');

      final segment = state.selections[0]
          ? 2
          : state.selections[1]
              ? 3
              : 1;

      _matchRepository.updateMatch(
        field: int.parse(state.score.value == '' ? '0' : state.score.value),
        legId: state.legId,
        matchId: state.matchId,
        segment: segment,
        isFinished: true,
      );

      _appCubit.finishMatch();
    });
  }

  final String matchId;
  final String legId;
  final String player1;
  final String player2;
  final int whoAmI;
  final AppCubit _appCubit;
  final MatchRepository _matchRepository;
  late final StreamSubscription<dynamic> _matchSubscription;

  int getCurrentlyThrowing({
    required bool newLeg,
    required int legs,
    required bool newVisit,
  }) {
    if (newLeg) {
      return legs.isEven ? 1 : 2;
    } else if (newVisit) {
      return state.currentlyThrowing == 1 ? 2 : 1;
    }

    return state.currentlyThrowing;
  }

  @override
  void onChange(Change<MatchState> change) {
    print(change);
    super.onChange(change);
  }

  @override
  Future<void> close() {
    _matchSubscription.cancel();
    return super.close();
  }
}
