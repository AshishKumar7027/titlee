import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/home%20_screen_amit.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/home_login_screen.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/person_model_screen.dart';
import 'package:title/main.dart';

class Create2AccountScreen extends StatefulWidget {
  const Create2AccountScreen({super.key});

  @override
  State<Create2AccountScreen> createState() => _Create2AccountScreenState();
}

class _Create2AccountScreenState extends State<Create2AccountScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/shape8.png'),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            buildTextField1(
              firstnameController,
              'Enter first name',
              Icons.person,
            ),
            buildTextField1(
              lastnameController,
              'Enter last name',
              Icons.person_2_outlined,
            ),
            buildTextField1(
              emailController,
              'Enter email',
              Icons.email_outlined,
            ),
            buildTextField1(
              passwordController,
              'Enter password',
              Icons.password_outlined,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                saveData();
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orange,
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do Not Have An Account?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset('assets/shape9.png'),
          ],
        ),
      ),
    );
  }

  Future saveData() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setString('email', emailController.text);
    sh.setString('password', passwordController.text);
    sh.setBool('conditiontrue', true);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Account new successfully"),
    ));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreenAmit(),
        ));
  }

  Widget buildTextField1(controller, labeltext, icon) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 9),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Container(
            padding: EdgeInsets.only(right: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 20,
                    width: 1, // Divider width
                    color: Colors.grey, // Divider color
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          labelText: labeltext,
        ),
      ),
    );
  }


}
