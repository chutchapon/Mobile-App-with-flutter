import 'package:flutter/material.dart';
import 'package:http_request/model/photo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Photo> photos = [];
  Future fectchPhoto() async {
    http.Response response = await http.get(
      Uri.parse(
        "https://jsonplaceholder.typicode.com/photos?_start=0&_limit=5",
      ),
    );
    setState(() {
      photos = (jsonDecode(response.body) as List)
          .map(
            (json) => Photo.fromJson(json),
          )
          .toList();
    });
  }

  /* var todo; */

  void initState() {
    fectchPhoto();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: photos.map((photo) {
          return Center(
            child: Image.network(photo.thumbnailUrl),
          );
        }).toList(),
      ),
    );
  }
}
