import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/activity_screen.dart';
import 'package:flutter_application_1/Screen/article_screen.dart';
import 'package:flutter_application_1/Screen/home_screen.dart';

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
    label: "home",
    page: HomeScreen(),
    title: "หน้าแรก",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "news",
    page: ArticleScreen(),
    title: "ข่าวสาร",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "activity",
    page: ActivityScren(),
    title: "กิจกรรม",
  ),
];
