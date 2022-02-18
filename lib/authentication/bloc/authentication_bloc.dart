import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:odl_flutter_client/common/models/auth_info.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(
          const AuthenticationState(
            authenticationStatus: AuthenticationStatus.unknown,
            userId: '',
          ),
        ) {
    on<AuthenticationAuthInfoChanged>((event, emit) {
      emit(AuthenticationState(
        authenticationStatus: event.authenticationStatus,
        userId: event.userId,
      ));

      if (event.authenticationStatus == AuthenticationStatus.unknown) {
        _authenticationRepository.checkAuthStatus();
      }
    });

    on<AuthenticationLogoutRequested>(
        (event, emit) => _authenticationRepository.logOut());

    _authenticationStatusSubscription = _authenticationRepository.authInfo
        .listen((event) => add(AuthenticationAuthInfoChanged(
              authenticationStatus: event.authenticationStatus,
              userId: event.userId,
            )));
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthInfo> _authenticationStatusSubscription;

  @override
  void onChange(Change<AuthenticationState> change) {
    print(change);
    super.onChange(change);
  }

  @override
  Future<void> close() {
    print('authentication bloc closed');
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }
}
