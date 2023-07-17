import 'package:flutter/material.dart';
import 'package:flutter_app_testing/home_page.dart';
import 'package:flutter_app_testing/main.dart';
import 'package:flutter_app_testing/next_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case '/next-page':
        if (args is String) {
          return MaterialPageRoute(
            builder: (context) => NextPage(
              data: args,
            ),
          );
        }

        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error Page'),
          ),
          body: Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
