import 'package:flutter/material.dart';
import 'package:mind_task/view/pages/auth/login.dart';
import 'package:mind_task/view/pages/navigation_bar/main_navigation.dart';
import 'package:mind_task/view/pages/splash.dart';

class GenerateRouter {
  GenerateRouter._();

  static const String splash = '/';
  static const String mainNavigation = '/mainNavigation';
  static const String login = '/login';

  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        {
          return MaterialPageRoute(
            builder: (context) => const Splash(),
          );
        }
      case mainNavigation:
        {
          return MaterialPageRoute(
            builder: (context) => const MainNavigationBar(),
          );
        }
      case login:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Scaffold(
              body: Center(
                child: Text('Page not found!'),
              ),
            ),
          );
        }
    }
  }
}
