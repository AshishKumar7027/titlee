import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Chat Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
