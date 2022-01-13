import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(
          const AuthenticationInitial(),
        ) {
    on<AuthenticationEvent>((event, emit) {
      if (event is AuthenticationStatusChanged) {
        switch (event.status) {
          case AuthenticationStatus.authenticated:
            return emit(const AuthenticationAuthenticated());
          case AuthenticationStatus.unauthenticated:
            return emit(const AuthenticationUnauthenticated());
          default:
            return emit(const AuthenticationInitial());
        }
      } else if (event is AuthenticationLogoutRequested) {
        _authenticationRepository.logOut();
      } else {
        _authenticationRepository.checkAuthStatus();
      }
    });

    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }
}
