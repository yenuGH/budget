import 'package:flutter/material.dart';

class Routes {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/": {
        return MaterialPageRoute(
          builder: (context) {
            return const Placeholder();
          },
        );
      }

      case "/home_page": {
        return MaterialPageRoute(
          builder: (context) {
            return const Placeholder();
          },
        );
      }

      default: {
        return MaterialPageRoute(
          builder: (context) {
            return const Placeholder();
          },
        );
      }
    }
  }
}