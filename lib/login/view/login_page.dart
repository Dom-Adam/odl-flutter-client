import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/login/bloc/login_bloc.dart';
import 'package:odl_flutter_client/login/view/login_form.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(authenticationRepository: context.read<AuthenticationRepository>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(12),
          child: LoginForm(),
        ),
      ),
    );
  }
}
