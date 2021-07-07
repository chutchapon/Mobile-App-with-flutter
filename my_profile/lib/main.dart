import 'package:flutter/material.dart';
import 'package:my_profile/route.dart';
import 'package:my_profile/screen/home_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
