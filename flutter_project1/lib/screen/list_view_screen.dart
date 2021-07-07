import 'package:flutter/material.dart';
import 'package:flutter_project1/screen/Home_screen.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key key}) : super(key: key);
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          //drawer tabs
          child: Text("List View Screen Drawer"),
          //text in drawer
        ),
        appBar: AppBar(
          title: Text("List View Screen"),
          //title for appbar
        ),
        body: ListView(children: [
          //create list title
          ElevatedButton(
            //create ElevatedButton
            onPressed: () {
              //Link to other Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Text("Form Screen"),
          ),
          ListTile(
            title: Text("Header 1"),
          ),
          ListTile(
            title: Text("Header 2"),
          ),
          ListTile(
            title: Text("Header 3"),
          ),
          ListTile(
            title: Text("Header 4"),
          ),
          ListTile(
            title: Text("Header 5"),
          ),
          ListTile(
            title: Text("Header 6"),
          ),
          ListTile(
            title: Text("Header 7"),
          ),
          ListTile(
            title: Text("Header 8"),
          ),
          ListTile(
            title: Text("Header 9"),
          ),
          ListTile(
            title: Text("Header 10"),
          ),
          ListTile(
            title: Text("Header 11"),
          ),
          ListTile(
            title: Text("Header 12"),
          ),
          ListTile(
            title: Text("Header 13"),
          ),
          ListTile(
            title: Text("Header 14"),
          ),
        ]),
      ),
    );
  }
}
