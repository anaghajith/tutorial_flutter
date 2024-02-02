import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 225.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 1.0,
                viewportFraction: 0.7,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}