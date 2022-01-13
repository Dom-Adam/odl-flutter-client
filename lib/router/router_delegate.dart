import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odl_flutter_client/authentication/bloc/authentication_bloc.dart';
import 'package:odl_flutter_client/cubit/app_cubit.dart';
import 'package:odl_flutter_client/home/view/home_page.dart';
import 'package:odl_flutter_client/login/view/login_page.dart';
import 'package:odl_flutter_client/repositories/authentication_repository.dart';
import 'package:odl_flutter_client/router/app_configuration.dart';
import 'package:odl_flutter_client/splash/view/splash_page.dart';

class AppRouterDelegate extends RouterDelegate<AppConfiguration>
    with PopNavigatorRouterDelegateMixin<AppConfiguration>, ChangeNotifier {
  AppRouterDelegate({required this.appState})
      : navigatorKey = GlobalKey<NavigatorState>();

  final AppCubit appState;
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  List<Page> pages(AuthenticationStatus status) {
    if (status == AuthenticationStatus.authenticated) {
      return [const MaterialPage(child: HomePage(), key: ValueKey('HomePage'))];
    } else if (status == AuthenticationStatus.unauthenticated) {
      return [
        const MaterialPage(child: LoginPage(), key: ValueKey('LoginPage'))
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
      listener: (context, state) {
        AuthenticationBloc authenticationBloc =
            context.read<AuthenticationBloc>();

        if (state.authenticationStatus != authenticationBloc.state.status) {
          switch (state.authenticationStatus) {
            case AuthenticationStatus.unknown:
              authenticationBloc.add(const AuthenticationStatusChanged(
                  AuthenticationStatus.unknown));
              break;
            case AuthenticationStatus.authenticated:
              authenticationBloc.add(
                const AuthenticationStatusChanged(
                  AuthenticationStatus.authenticated,
                ),
              );
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
        pages: pages(appState.state.authenticationStatus),
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async {
    if (configuration.isHomePage) {
      appState.loggedIn();
    } else if (configuration.isLoginPage) {
      appState.loggedOut();
    } else if (configuration.isSplashPage) {
      appState.loading();
    } else {
      appState.unknown();
    }
  }

  @override
  AppConfiguration get currentConfiguration {
    if (appState.state.authenticationStatus ==
        AuthenticationStatus.authenticated) {
      return const AppConfiguration.home();
    } else if (appState.state.authenticationStatus ==
        AuthenticationStatus.unauthenticated) {
      return const AppConfiguration.login();
    } else {
      return const AppConfiguration.splash();
    }
  }
}
