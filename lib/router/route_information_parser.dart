import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:odl_flutter_client/router/app_configuration.dart';

class AppRouteInformationParser
    extends RouteInformationParser<AppConfiguration> {
  @override
  Future<AppConfiguration> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.length == 1) {
      String first = uri.pathSegments[0];

      if (first == 'home') {
        return SynchronousFuture(const AppConfiguration.home());
      } else if (first == 'login') {
        return SynchronousFuture(const AppConfiguration.login());
      } else {
        return SynchronousFuture(const AppConfiguration.splash());
      }
    }

    return SynchronousFuture(const AppConfiguration.unknown());
  }

  @override
  RouteInformation? restoreRouteInformation(configuration) {
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/home');
    } else if (configuration.isLoginPage) {
      return const RouteInformation(location: '/login');
    } else if (configuration.isSplashPage) {
      return const RouteInformation(location: '/splash');
    }

    return null;
  }
}