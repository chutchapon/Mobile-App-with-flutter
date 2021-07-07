import 'package:flutter/material.dart';
import 'package:my_profile/screen/gallery_screen.dart';
import 'package:my_profile/screen/home_screen.dart';
import 'package:my_profile/screen/notification_screen.dart';

class Page {
  final String title;
  final Icon icon;
  final String label;
  final Widget page;

  Page({this.title, this.icon, this.label, this.page});
}

List<Page> pages = [
  Page(
    icon: Icon(Icons.home),
    label: "Home",
    page: HomeScreen(),
    title: "Home",
  ),
  Page(
    icon: Icon(Icons.chat_outlined),
    label: "News",
    page: NotificationScreen(),
    title: "Notification",
  ),
  Page(
    icon: Icon(Icons.collections_outlined),
    label: "Gallery",
    page: GalleryScreen(),
    title: "Gallery",
  ),
];
