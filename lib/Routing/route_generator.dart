import 'package:a_routing/Pages/error_page.dart';
import 'package:a_routing/Pages/home_page.dart';
import 'package:a_routing/Pages/page1.dart';
import 'package:a_routing/Pages/page2.dart';
import 'package:a_routing/Routing/routes_list.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> routeGenratorFun(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case RoutesList.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RoutesList.page1:
        {
          if (args is String) {
            return MaterialPageRoute(
              builder: (context) => Page1(
                stringData: args,
              ),
            );
          }

          return handleErrorPage();
        }
      case RoutesList.page2:
        {
          if (args is int) {
            return MaterialPageRoute(
              builder: (context) => Page2(
                intData: args,
              ),
            );
          }

          return handleErrorPage();
        }
      default:
        return handleErrorPage();
    }
  }

  static Route<dynamic> handleErrorPage() {
    return MaterialPageRoute(
      builder: (context) => const ErrorPage(),
    );
  }
}
