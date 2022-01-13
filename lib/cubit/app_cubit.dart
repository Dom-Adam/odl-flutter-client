import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.loading());

  void loggedOut() => emit(const AppState.loggedOut());
  void loggedIn() => emit(const AppState.loggedIn());
  void loading() => emit(const AppState.loading());
  void unknown() => emit(state.unknown(state.authenticationStatus));

  @override
  void onChange(Change<AppState> change) {
    print(change);
    super.onChange(change);
  }
}
