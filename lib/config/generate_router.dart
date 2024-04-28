import 'package:flutter/material.dart';
import 'package:mind_task/model/product_model/product_model.dart';
import 'package:mind_task/view/pages/auth/login.dart';
import 'package:mind_task/view/pages/navigation_bar/main_navigation.dart';
import 'package:mind_task/view/pages/products_list/products_list.dart';
import 'package:mind_task/view/pages/splash.dart';

class GenerateRouter {
  GenerateRouter._();

  static const String splash = '/';
  static const String mainNavigation = '/mainNavigation';
  static const String productList = '/products';
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
      case productList:
        {
          var products = settings.arguments as ({
            List<ProductModel> products,
            String title
          });
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => ProductsList(
              products: products.products,
              title: products.title,
            ),
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
