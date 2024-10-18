import 'package:flutter/material.dart';

class AppleStore extends StatelessWidget {
  const AppleStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
         decoration: InputDecoration(
            //hintText: 'Input user name',
           label: Icon(Icons.account_box)
         ),
      ),
    );
  }
}
