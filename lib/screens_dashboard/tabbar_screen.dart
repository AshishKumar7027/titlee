import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.greenAccent,
          tabs: [
          Column(
            children: [
              Icon(Icons.home),
              Text('Home')
            ],
          ),

          Column(
            children: [
              Icon(Icons.browse_gallery),
              Text('Gallery')
            ],
          ),
          Column(
            children: [
              Icon(Icons.settings),
              Text('Setting')
            ],
          ),
          Column(
            children: [
              Icon(Icons.login),
              Text('Login')
            ],
          ),
        ],),

      ),

    ));
  }
}
