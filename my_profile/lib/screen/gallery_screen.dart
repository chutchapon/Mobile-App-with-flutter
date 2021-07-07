import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
    "https://i.imgur.com/D1I4fqC.jpg",
    "https://i.imgur.com/8lPvr7A.jpg",
    "https://i.imgur.com/eU7RzzC.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Swiper(
            autoplay: true,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                gallery[index],
                fit: BoxFit.contain,
              );
            },
            itemCount: gallery.length,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}
