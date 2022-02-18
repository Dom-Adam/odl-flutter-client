import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/authentication/bloc/authentication_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/home/view/home_page.dart';
import 'package:odl_flutter_client/login/view/login_page.dart';
import 'package:odl_flutter_client/match/view/match_page.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/router/app_configuration.dart';
import 'package:odl_flutter_client/sign_up/view/sign_up_page.dart';
import 'package:odl_flutter_client/splash/view/splash_page.dart';

class AppRouterDelegate extends RouterDelegate<AppConfiguration>
    with PopNavigatorRouterDelegateMixin<AppConfiguration>, ChangeNotifier {
  AppRouterDelegate({required this.appState})
      : navigatorKey = GlobalKey<NavigatorState>();

  final AppCubit appState;
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  List<Page> pages(
    AuthenticationStatus status,
    bool isSignUp,
    bool isMatchActive,
  ) {
    if (status == AuthenticationStatus.authenticated) {
      return [
        const MaterialPage(
          child: HomePage(),
          key: ValueKey('HomePage'),
        ),
        if (isMatchActive)
          const MaterialPage(child: MatchPage(), key: ValueKey('MatchPage'))
      ];
    } else if (status == AuthenticationStatus.unauthenticated) {
      return [
        const MaterialPage(child: LoginPage(), key: ValueKey('LoginPage')),
        if (isSignUp)
          const MaterialPage(child: SignUpPage(), key: ValueKey('SignUpPage'))
      ];
    } else {
      return [
        const MaterialPage(child: SplashPage(), key: ValueKey('SplashPage'))
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listenWhen: (previous, current) =>
          previous.authenticationStatus != current.authenticationStatus,
      listener: (context, state) {
        print('app cubit listener');
        AuthenticationBloc authenticationBloc =
            context.read<AuthenticationBloc>();

        if (state.authenticationStatus !=
            authenticationBloc.state.authenticationStatus) {
          switch (state.authenticationStatus) {
            case AuthenticationStatus.unknown:
              authenticationBloc.add(const AuthenticationAuthInfoChanged(
                authenticationStatus: AuthenticationStatus.unknown,
                userId: '',
              ));
              break;
            case AuthenticationStatus.authenticated:
              authenticationBloc.add(AuthenticationAuthInfoChanged(
                authenticationStatus: AuthenticationStatus.authenticated,
                userId: state.userId,
              ));
              break;
            case AuthenticationStatus.unauthenticated:
              authenticationBloc.add(const AuthenticationLogoutRequested());
              break;
            default:
          }
        }
      },
      child: Navigator(
        key: navigatorKey,
        pages: pages(
          appState.state.authenticationStatus,
          appState.state.isSignUpPage,
          appState.state.isMatchActive,
        ),
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          if (appState.state.isSignUpPage) {
            appState.loggedOut();
          }

          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async {
    if (configuration.isHomePage) {
      print('set new route path home');
      appState.loggedIn();
    } else if (configuration.isLoginPage) {
      print('set new route path login');
      appState.loggedOut();
    } else if (configuration.isSplashPage) {
      print('set new route path splash');
      appState.loading();
    } else if (configuration.isSignUpPage) {
      print('set new route path signup');
      appState.signUp();
    } else if (configuration.isMatchPage) {
      appState.match();
    } else {
      print('set new route path unknown');
      appState.unknown();
    }
  }

  @override
  AppConfiguration get currentConfiguration {
    if (appState.state.authenticationStatus ==
            AuthenticationStatus.authenticated &&
        !appState.state.isMatchActive) {
      print('get current configuration home');
      return const AppConfiguration.home();
    } else if (appState.state.authenticationStatus ==
            AuthenticationStatus.unauthenticated &&
        !appState.state.isSignUpPage) {
      print('get current configuration login');
      return const AppConfiguration.login();
    } else if (appState.state.isSignUpPage) {
      print('get current configuration signup');
      return const AppConfiguration.signUp();
    } else if (appState.state.isMatchActive) {
      return const AppConfiguration.match();
    } else {
      print('get current configuration splash');
      return const AppConfiguration.splash();
    }
  }
}
