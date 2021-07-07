import 'package:flutter/material.dart';
//import 'screen/Form_screen.dart';
//import 'package:flutter_project1/screen/Home_screen.dart';
import 'package:flutter_project1/screen/example.dart';
//import 'package:flutter_project1/screen/list_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(),
      //home: FromScreen(),
      //home: ListViewScreen(),
      home: ExampleScreen(),
    );
  }
}
