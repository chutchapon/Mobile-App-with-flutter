import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/main_screen.dart';
import 'package:flutter_application_1/route.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
