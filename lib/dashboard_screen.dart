import 'package:flutter/material.dart';
import 'package:title/screens_dashboard/calll_screen.dart';
import 'package:title/screens_dashboard/camra_screen.dart';
import 'package:title/screens_dashboard/chhat_screen.dart';
import 'package:title/screens_dashboard/homee_screen.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int select = 0;
  List<Widget> tapScreen = [
    EndScreen(),
    BottomScreen(),
    MessageScreen(),
    CamraScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'DashBoard Screen',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,color: Colors.greenAccent
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Camra',
            ),
          ],
          currentIndex: select,
          onTap: (int index) {
            select = index;
            setState(() {});
          },
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 30),
          selectedItemColor: Colors.greenAccent,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
        body: tapScreen[select],
      ),
    );
  }
}
