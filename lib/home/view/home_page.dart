import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/authentication/bloc/authentication_bloc.dart';
import 'package:odl_flutter_client/home/cubit/home_cubit.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        matchRepository: context.read<MatchRepository>(),
        authenticationRepository: context.read<AuthenticationRepository>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.matchStatus == MatchStatus.inactive
                  ? Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.read<HomeCubit>().searchOpponent();
                          },
                          child: const Text('ready'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            context
                                .read<AuthenticationBloc>()
                                .add(const AuthenticationLogoutRequested());
                          },
                          child: const Text('logout'),
                        ),
                      ],
                    )
                  : const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

class _ButtonGroup extends StatelessWidget {
  const _ButtonGroup({
    Key? key,
    required this.homeCubit,
  }) : super(key: key);

  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.matchStatus == MatchStatus.inactive
            ? Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeCubit.searchOpponent();
                    },
                    child: const Text('ready'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      context
                          .read<AuthenticationBloc>()
                          .add(const AuthenticationLogoutRequested());
                    },
                    child: const Text('logout'),
                  ),
                ],
              )
            : const CircularProgressIndicator();
      },
    );
  }
}
