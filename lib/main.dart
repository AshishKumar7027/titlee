import 'package:flutter/material.dart';
import 'package:title/flutter_ui_screen/page_view_screen.dart';
import 'package:title/flutter_ui_screen/shared_preferns_screen.dart';
import 'package:title/screens_dashboard/photo_slider_screen.dart';

import 'quiz_app_screem/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PageViewScreen(),
    );
  }
}