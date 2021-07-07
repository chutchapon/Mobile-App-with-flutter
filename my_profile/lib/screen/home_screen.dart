import 'package:flutter/material.dart';
import 'package:my_profile/screen/gallery_screen.dart';
import 'package:my_profile/screen/notification_screen.dart';
import 'package:my_profile/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
// add index for function
  var pages = [
    {"title": "Profile Screen", "screen": ProfileScreen()},
    {"title": "Gallery Screen", "screen": GalleryScreen()},
    {"title": "Notification Screen", "screen": NotificationScreen()}
  ];
// create function index
  _setcurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: pages[_currentIndex]["screen"],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _setcurrentIndex,
          //send value to _setcurrentIndex
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo_album,
                ),
                label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.circle_notifications,
                ),
                label: "Notification"),
          ],
        ),
      ),
    );
  }
}
