import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoviewScreen extends StatefulWidget {
  const PhotoviewScreen({super.key});

  @override
  State<PhotoviewScreen> createState() => _PhotoviewScreenState();
}

class _PhotoviewScreenState extends State<PhotoviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
       child:  PhotoView(
         imageProvider: NetworkImage('https://wallpaperaccess.com/full/1613405.jpg'),
       ),
      ),
    ));
  }
}
