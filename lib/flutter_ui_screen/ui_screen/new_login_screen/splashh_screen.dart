import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/home%20_screen_amit.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/home_login_screen.dart';

class SplashhScreen extends StatefulWidget {
  const SplashhScreen({super.key});

  @override
  State<SplashhScreen> createState() => _SplashhScreenState();
}

class _SplashhScreenState extends State<SplashhScreen> {
  @override
  void initState() {
   show();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("helo"),
    );
  }
  Future<void> show() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    bool? t = sh.getBool('conditiontrue');
    bool? f = sh.getBool('conditionfalse');

    if (t == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreenAmit()));
    } else if (f == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeLoginScreen()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreenAmit()));
    }
  }

}

