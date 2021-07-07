import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/credit_screen.dart';
import 'package:flutter_application_1/Screen/history_screen.dart';
import 'package:flutter_application_1/Screen/main_screen.dart';


class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
        break;
      case '/history':
        return MaterialPageRoute(
          builder: (context) => HistoryScreen(),
        );
         case '/credit':
        return MaterialPageRoute(
          builder: (context) => CreditScreen(),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}
