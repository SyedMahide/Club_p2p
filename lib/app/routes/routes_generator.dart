import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p2p/app/modules/home/bindings/home_binding.dart';
import 'package:p2p/app/modules/home/views/home_view.dart';
import 'package:p2p/shared/analytics.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic>? args;
    try {
      args = settings.arguments as Map<String, dynamic>?;
    } catch (_) {
      args = null;
    }

    logRouteAnalytics(routeName: settings.name, arguments: args);

    switch (settings.name) {
      // case Routes.index:
      //   return MaterialPageRoute<dynamic>(builder: (_) => HomeUI());
      case Routes.index:
        return GetPageRoute<dynamic>(
          page: () => const HomeView(),
          binding: HomeBinding(),
          settings: settings,
        );

      default:
        return _route404();
    }
  }

  static Route<dynamic> _route404() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }

  static void logRouteAnalytics(
      {String? routeName, Map<String, dynamic>? arguments}) {
    AnalyticsService.to.sendPageAnalytics(routeName);
  }
}