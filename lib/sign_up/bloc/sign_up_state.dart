part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
    this.email = const Email.pure(),
  });

  final FormzStatus status;
  final Username username;
  final Password password;
  final Email email;

  SignUpState copyWith({
    FormzStatus? status,
    Username? username,
    Password? password,
    Email? email,
  }) {
    return SignUpState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
    );
  }

  @override
  List<Object> get props => [status, username, password, email];
}
