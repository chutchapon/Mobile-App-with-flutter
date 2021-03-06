import 'package:flutter/material.dart';
import 'package:http_request/route.dart';
import 'package:http_request/screen/home_screen.dart';

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
      home: HomeScreen(),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
