import 'package:flutter/material.dart';

class HomeScreenAmit extends StatefulWidget {
  const HomeScreenAmit({super.key});

  @override
  State<HomeScreenAmit> createState() => _HomeScreenAmitState();
}

class _HomeScreenAmitState extends State<HomeScreenAmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page"),),
      body: Center(
        child: Text("home "),
      ),
    );
  }
}
