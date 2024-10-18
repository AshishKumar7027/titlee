import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/myhome_screen.dart';
import 'package:title/flutter_ui_screen/shared_preferns_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Decision();
    super.initState();
  }
    Future Decision()async{
      SharedPreferences sp = await SharedPreferences.getInstance();
      bool? isLogin = sp.getBool('isLogin');
      if(isLogin == true){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return MyhomeScreen();
        }));

    }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return LoginScreen();
        }));
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.facebook,size: 150,color: Colors.blue,)),
    );
  }
}
