import 'package:flutter/material.dart';
import 'package:title/flutter_ui_screen/post_screen.dart';
import 'package:title/flutter_ui_screen/profile_screen.dart';


import 'appbar_screen.dart';

class MyhomeScreen extends StatefulWidget {
  const MyhomeScreen({super.key});

  @override
  State<MyhomeScreen> createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff1e0d2d),
      body: ListView(
        children: [
          Stack(
            children: [
             ProfileScreen(),
              AppbarScreen(),
              PostScreen(),

            ],
          )
        ],
      ),
    ));
  }
}
