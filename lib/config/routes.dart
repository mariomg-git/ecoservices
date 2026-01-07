import 'package:flutter/material.dart';
import '../pages/landing_page.dart';
import '../pages/auth_page.dart';

class AppRoutes {
  static const String landing = '/';
  static const String auth = '/auth';
  static const String dashboard = '/dashboard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landing:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case auth:
        return MaterialPageRoute(builder: (_) => const AuthPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
