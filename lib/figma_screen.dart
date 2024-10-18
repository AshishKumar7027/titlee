import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Product Item'),

      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ),

          Container(
            height: 400,
            width: 400,
            color: Colors.pink,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.orange,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.yellow,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.greenAccent,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.blue,
          ),
        ],
      ),
    ));
  }
}
