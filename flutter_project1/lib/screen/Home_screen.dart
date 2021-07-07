import 'package:flutter/material.dart';
import 'package:flutter_project1/screen/Form_screen.dart';
import 'package:flutter_project1/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  //hot reload for reload screen
  HomeScreen({Key key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          //drawer tabs
          child: Text("Home Screen Drawer"),
          //text in drawer
        ),
        appBar: AppBar(
          title: Text("My first project"),
          //title for appbar
        ),
        body: Center(
          //body in app
          child: Column(
            // add child container row or column
            children: [
              Container(
                color: Colors.red,
                child: Text("test statefull widget image and text"),
              ),
              Container(
                width: 300,
                height: 120,
                color: Colors.blueAccent.shade100,
                child: Image.asset('assets/images/dota2.gif'),
              ),
              Container(
                //build Container for text
                width: 300,
                height: 150,
                //fix width and height for container
                color: Colors.green.shade100,
                //command color for container
                child: Image.network(
                    'https://steamuserimages-a.akamaihd.net/ugc/867360923191280698/EF72B9EBC73E1C813E483996D0D8E6FC4380AAD0/'),
                //child: Image.asset('assets/images/dota2.gif')
                //import image form (EX : assets/images/'picture.jpg')
                //Text("test statefull widget"),
                //text for body
              ),
              ElevatedButton(
                //create ElevatedButton
                onPressed: () {
                  //Link to other Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("List View Screen"),
              ),
              ElevatedButton(
                //create ElevatedButton
                onPressed: () {
                  //Link to other Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FromScreen(),
                    ),
                  );
                },
                child: Text("Form Scren"),
              ),
              DropdownButton(
                //create DropdownButton
                hint: Text("Select Button"),
                items: [
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("Button 1"),
                  ),
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("Button 2"),
                  )
                ],
                onChanged: (int value) {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //call icon
              label: "Home",
              // name label for icon home
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              //call icon
              label: "Phone",
              // name label for icon phone
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              //call icon
              label: "Dashboard",
              // name label for icon dashboard
            ),
          ],
        ),
      ),
    );
  }
}

class FormScreen {}
