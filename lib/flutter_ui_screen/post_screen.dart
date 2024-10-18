import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/shared_preferns_screen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();

}

class _PostScreenState extends State<PostScreen> {
  Future logout()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
   sp.remove('isLogin');
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
     return LoginScreen();
   }));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 370),
      child: Column(
        children: [
          IconButton(onPressed: (){
            logout();
          }, icon: Center(child: Icon(Icons.logout,color: Colors.white,)),)
        ],
      ),
    );
  }
}
