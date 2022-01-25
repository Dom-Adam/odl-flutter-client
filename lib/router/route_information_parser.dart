import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:odl_flutter_client/router/app_configuration.dart';

class AppRouteInformationParser
    extends RouteInformationParser<AppConfiguration> {
  @override
  Future<AppConfiguration> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    print('parse route information ${routeInformation.location}');
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.length == 1) {
      String first = uri.pathSegments[0];

      if (first == 'home') {
        return SynchronousFuture(const AppConfiguration.home());
      } else if (first == 'login') {
        return SynchronousFuture(const AppConfiguration.login());
      } else if (first == 'signup') {
        return SynchronousFuture(const AppConfiguration.signUp());
      } else {
        return SynchronousFuture(const AppConfiguration.splash());
      }
    }

    return SynchronousFuture(const AppConfiguration.unknown());
  }

  @override
  RouteInformation? restoreRouteInformation(configuration) {
    if (configuration.isHomePage) {
      print('restore route information home');
      return const RouteInformation(location: '/home');
    } else if (configuration.isLoginPage) {
      print('restore route information login');
      return const RouteInformation(location: '/login');
    } else if (configuration.isSplashPage) {
      print('restore route information splash');
      return const RouteInformation(location: '/splash');
    } else if (configuration.isSignUpPage) {
      print('restore route information signup');
      return const RouteInformation(location: '/signup');
    }
    print('restore route information null');
    return null;
  }
}
