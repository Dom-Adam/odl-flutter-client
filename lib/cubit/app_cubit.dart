import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required MatchRepository matchRepository})
      : _matchRepository = matchRepository,
        super(const AppState.loading()) {
    _matchStatusSubscription = _matchRepository.matchStatusSubject
        .map((event) => event == MatchStatus.active ? true : false)
        .listen((event) {
          print(event);
      if (event != state.isMatchActive) {
        matchStatusChanged(event);
      }
    });
  }

  final MatchRepository _matchRepository;
  late final StreamSubscription<bool> _matchStatusSubscription;

  void loggedOut() => emit(const AppState.loggedOut());
  void loggedIn() => emit(const AppState.loggedIn());
  void loading() => emit(const AppState.loading());
  void signUp() => emit(const AppState.signUp());
  void match() => emit(const AppState.match());
  void unknown() =>
      emit(state.unknown(state.authenticationStatus, state.isMatchActive));

  void authenticationStatusChanged(AuthenticationStatus authenticationStatus) {
    if (authenticationStatus == AuthenticationStatus.unknown) {
      emit(const AppState.loading());
    } else if (authenticationStatus == AuthenticationStatus.unauthenticated) {
      if (state.isSignUpPage) {
        emit(const AppState.signUp());
      } else {
        emit(const AppState.loggedOut());
      }
    } else {
      emit(const AppState.loggedIn());
    }
  }

  void matchStatusChanged(bool isMatchActive) {
    if (isMatchActive) {
      emit(const AppState.match());
    } else {
      emit(const AppState.loggedIn());
    }
  }

  @override
  Future<void> close() {
    _matchStatusSubscription.cancel();
    return super.close();
  }
}
