import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/authentication/bloc/authentication_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/home/cubit/home_cubit.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        matchRepository: context.read<MatchRepository>(),
        userId: context.read<AppCubit>().state.userId,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return !state.searchingOpponent
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.read<AppCubit>().searchOpponent();
                          },
                          child: const Text('ready'),
                        ),
                        const Padding(padding: EdgeInsets.all(12)),
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
