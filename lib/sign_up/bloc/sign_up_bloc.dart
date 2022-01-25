import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:odl_flutter_client/common/models/models.dart';
import 'package:odl_flutter_client/repositories/user_repository.dart';
import 'package:odl_flutter_client/sign_up/models/email.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const SignUpState()) {
    on<SignUpUsernameChanged>(_onUsernameChanged);
    on<SignUpPasswordChanged>(_onPasswordChanged);
    on<SignUpEmailChanged>(_onEmailChanged);
    on<SignUpSubmitted>(_onSubmitted);
  }

  final UserRepository _userRepository;

  void _onUsernameChanged(
    SignUpUsernameChanged event,
    Emitter<SignUpState> emit,
  ) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        status: Formz.validate([username, state.password, state.email]),
      ),
    );
  }

  void _onPasswordChanged(
    SignUpPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.username, password, state.email]),
      ),
    );
  }

  void _onEmailChanged(SignUpEmailChanged event, Emitter<SignUpState> emit) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([state.username, state.password, email]),
      ),
    );
  }

  Future<void> _onSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        if (await _userRepository.createUser(
          state.email.value,
          state.username.value,
          state.password.value,
        )) {
          emit(state.copyWith(status: FormzStatus.submissionSuccess));
        } else {
          emit(state.copyWith(status: FormzStatus.submissionFailure));
        }
      } catch (error) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}
