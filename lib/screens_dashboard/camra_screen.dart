import 'package:flutter/material.dart';

class CamraScreen extends StatelessWidget {
  const CamraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Camra Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
