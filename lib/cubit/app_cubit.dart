import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.data.gql.dart';
import 'package:odl_flutter_client/home/graphql/get_match_id.var.gql.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required MatchRepository matchRepository})
      : _matchRepository = matchRepository,
        super(const AppState(
          show404: false,
          isSignUpPage: false,
          authenticationStatus: AuthenticationStatus.unknown,
          userId: '',
          matchId: '',
          legId: '',
          player1: '',
          player2: '',
          whoAmI: 0,
          isMatchActive: false,
        )) {
    _matchRepository.getMatchId(state.userId);
    _matchIdStream = _matchRepository.matchData.listen((event) {
      final getMatchId = event.data?.getMatchId;

      if (getMatchId?.id != null &&
          getMatchId?.legs[0].id != null &&
          getMatchId?.players[0].username != null &&
          getMatchId?.players[1].username != null &&
          getMatchId?.players[0].id != null &&
          getMatchId?.id != state.matchId) {
        matchInformationChanged(
          matchId: getMatchId!.id,
          legId: getMatchId.legs[0].id,
          player1: getMatchId.players[0].username,
          player2: getMatchId.players[1].username,
          whoAmI: getMatchId.players[0].id == state.userId ? 1 : 2,
        );
      }
    });
  }

  final MatchRepository _matchRepository;
  late final StreamSubscription<
      OperationResponse<GGetMatchIdData, GGetMatchIdVars>> _matchIdStream;

  void loggedOut() => emit(loginPage());
  void loggedIn() {
    if (state.authenticationStatus == AuthenticationStatus.authenticated) {
      emit(homePage(userId: state.userId));
    } else {
      emit(loginPage());
    }
  }

  void loading() => emit(splashPage());
  void signUp() => emit(signUpPage());
  void match() {
    if (state.authenticationStatus == AuthenticationStatus.authenticated) {
      if (state.isMatchActive) {
        emit(matchPage(
          matchId: state.matchId,
          legId: state.legId,
          player1: state.player1,
          player2: state.player2,
          whoAmI: state.whoAmI,
        ));
      } else {
        emit(homePage(userId: state.userId));
      }
    } else {
      emit(loginPage());
    }
  }

  void unknown() => emit(state.copyWith(show404: true));

  void authenticationStatusChanged({
    required AuthenticationStatus authenticationStatus,
    required String userId,
  }) {
    if (authenticationStatus == AuthenticationStatus.unknown) {
      emit(splashPage());
    } else if (authenticationStatus == AuthenticationStatus.unauthenticated) {
      if (state.isSignUpPage) {
        emit(signUpPage());
      } else {
        emit(loginPage());
      }
    } else {
      emit(homePage(userId: userId));
    }
  }

  AppState loginPage() => state.copyWith(
        authenticationStatus: AuthenticationStatus.unauthenticated,
        userId: '',
        isMatchActive: false,
        show404: false,
        isSignUpPage: false,
      );

  AppState splashPage() => state.copyWith(
        authenticationStatus: AuthenticationStatus.unknown,
        userId: '',
        isMatchActive: false,
        show404: false,
        isSignUpPage: false,
      );

  AppState signUpPage() => state.copyWith(
        authenticationStatus: AuthenticationStatus.unauthenticated,
        userId: '',
        isMatchActive: false,
        show404: false,
        isSignUpPage: true,
      );

  AppState homePage({required String userId}) {
    print('home page state');
    return state.copyWith(
      authenticationStatus: AuthenticationStatus.authenticated,
      userId: userId,
      isMatchActive: false,
      show404: false,
      isSignUpPage: false,
    );
  }

  AppState matchPage({
    required String matchId,
    required String legId,
    required String player1,
    required String player2,
    required int whoAmI,
  }) =>
      state.copyWith(
        authenticationStatus: AuthenticationStatus.authenticated,
        isMatchActive: true,
        show404: false,
        isSignUpPage: false,
        matchId: matchId,
        legId: legId,
        player1: player1,
        player2: player2,
        whoAmI: whoAmI,
      );

  void finishMatch() {
    print('finish match called');
    emit(homePage(userId: state.userId));
  }

  void matchInformationChanged({
    required String matchId,
    required String legId,
    required String player1,
    required String player2,
    required int whoAmI,
  }) {
    emit(matchPage(
      matchId: matchId,
      legId: legId,
      player1: player1,
      player2: player2,
      whoAmI: whoAmI,
    ));
  }

  @override
  void onChange(Change<AppState> change) {
    if (change.currentState.userId != change.nextState.userId) {
      _matchRepository.getMatchId(change.nextState.userId);
    }
    super.onChange(change);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
