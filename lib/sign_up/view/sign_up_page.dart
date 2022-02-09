import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/repositories/user_repository.dart';
import 'package:odl_flutter_client/sign_up/bloc/sign_up_bloc.dart';
import 'package:odl_flutter_client/sign_up/view/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
        child: BlocProvider(
          create: (context) => SignUpBloc(userRepository: context.read<UserRepository>()),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('sign up'),
            ),
            body: const Padding(
              padding: EdgeInsets.all(12),
              child: SignUpForm(),
            ),
          ),
        ),
    );
  }
}
