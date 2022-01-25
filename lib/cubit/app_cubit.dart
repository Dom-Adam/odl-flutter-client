import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.loading());

  void loggedOut() => emit(const AppState.loggedOut());
  void loggedIn() => emit(const AppState.loggedIn());
  void loading() => emit(const AppState.loading());
  void signUp() => emit(const AppState.signUp());
  void unknown() => emit(state.unknown(state.authenticationStatus));

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
}
