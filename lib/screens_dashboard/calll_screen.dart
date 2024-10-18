import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: Text(
          'Call Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30,
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
