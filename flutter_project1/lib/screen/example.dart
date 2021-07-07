import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  ExampleScreen({Key key}) : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Medicine Reminder"),
        ),
        body: Container(
          width: 400,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Medicine"),
                    PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                            child: Text("Test"),
                          ),
                          PopupMenuItem(
                            child: Text("Test"),
                          )
                        ];
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.pinkAccent.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Morning",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(Icons.pivot_table_chart,
                              color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.purpleAccent.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Afternoon",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(Icons.pivot_table_chart,
                              color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
