import 'package:boilerplate/common/route/routes.dart';
import 'package:boilerplate/feature/dashboard/ui/screens/dashboard_screens.dart';
import 'package:boilerplate/feature/splash/ui/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(
          builder: (_) => const SplashScreens(),
          settings: RouteSettings(name: settings.name),
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreens(),
          settings: RouteSettings(name: settings.name),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreens(),
          settings: RouteSettings(name: settings.name),
        );
    }
  }
}
