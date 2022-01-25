import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/sign_up/bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                const SnackBar(content: Text('Registration Failure')));
        } else if (state.status.isSubmissionSuccess) {
          context.read<AppCubit>().loggedOut();
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            _UsernameInput(),
            Padding(padding: EdgeInsets.all(12)),
            _EmailInput(),
            Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
            Padding(padding: EdgeInsets.all(12)),
            _RegisterButton(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<SignUpBloc>().add(SignUpUsernameChanged(username)),
          decoration: InputDecoration(
            labelText: 'username',
            errorText: state.username.invalid ? 'invalid username' : null,
          ),
        );
      },
      buildWhen: (previous, current) => previous.username != current.username,
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) =>
              context.read<SignUpBloc>().add(SignUpEmailChanged(email)),
          decoration: InputDecoration(
            labelText: 'email',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
      },
      buildWhen: (previous, current) => previous.email != current.email,
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignUpBloc>().add(SignUpPasswordChanged(password)),
          decoration: InputDecoration(
            labelText: 'password',
            errorText: state.password.invalid ? 'invalid password' : null,
          ),
          obscureText: true,
        );
      },
      buildWhen: (previous, current) => previous.password != current.password,
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: state.status.isValidated
                    ? () {
                        context.read<SignUpBloc>().add(const SignUpSubmitted());
                      }
                    : null,
                child: const Text('Register'),
              );
      },
    );
  }
}
