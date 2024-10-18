import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PhotoSliderScreen extends StatefulWidget {
  const PhotoSliderScreen({super.key});

  @override
  State<PhotoSliderScreen> createState() => _PhotoSliderScreenState();
}

class _PhotoSliderScreenState extends State<PhotoSliderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Text(
            'SIDHU MOOSE WALA\n LEGEND NEVER DIE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 18),
          CarouselSlider(
              items: [
                Image.network(
                    'https://wallpapers.com/images/hd/sidhu-moose-wala-1080-x-1350-picture-a9r5n4qoty2ijhd0.jpg'),
                Image.network(
                    'https://resize.indiatvnews.com/en/resize/newbucket/1080_-/2023/05/sidhu-6-1685344692.jpg'),
                Image.network(
                    'https://images.genius.com/5554fc9dfaccf3ab68b4dc9ae55fb90b.1000x1000x1.jpg'),
                Image.network(
                    'http://www.baltana.com/files/wallpapers-20/Sidhu-Moose-Wala-Background-Wallpaper-47224.jpg'),
                Image.network(
                    'https://images.hindustantimes.com/img/2022/05/29/1600x900/Sidhu_Moosewala_1653831031508_1653831046138.jpg'),
              ],
              options: CarouselOptions(
                height: 500,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.bounceInOut,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.vertical,
              )),
                  Icon(Icons.mood_bad_rounded,color: Colors.redAccent,size: 80,)
        ])));
  }
}
