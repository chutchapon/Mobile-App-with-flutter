import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  FromScreen({Key key}) : super(key: key);
  _FromScreenState createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Form Screen"),
          //title for appbar
        ),
        body: Center(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  //create text field input
                  decoration: InputDecoration(
                    labelText: "Medicine",
                    // name label
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-Mail",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
