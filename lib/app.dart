import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/authentication/bloc/authentication_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/repositories/match_repository.dart';
import 'package:odl_flutter_client/router/route_information_parser.dart';
import 'package:odl_flutter_client/router/router_delegate.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.authenticationRepository,
  }) : super(key: key);

  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: authenticationRepository,
        ),
        RepositoryProvider(
          create: (context) => MatchRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => AuthenticationBloc(
              authenticationRepository: authenticationRepository,
            ),
          ),
          BlocProvider(
            create: (BuildContext context) =>
                AppCubit(matchRepository: context.read<MatchRepository>()),
          )
        ],
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            print('authentication bloc listener');
            AppCubit appCubit = context.read<AppCubit>();

            if (state.runtimeType == AuthenticationInitial) {
              context.read<AuthenticationRepository>().checkAuthStatus();
            }

            if (state.status != appCubit.state.authenticationStatus) {
              appCubit.authenticationStatusChanged(state.status);
            }
          },
          child: const AppView(),
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp.router(
          routeInformationParser: AppRouteInformationParser(),
          routerDelegate: AppRouterDelegate(
            appState: context.read<AppCubit>(),
          ),
          backButtonDispatcher: RootBackButtonDispatcher(),
        );
      },
    );
  }
}
