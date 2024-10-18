import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/create_account_screen.dart';
import 'package:title/flutter_ui_screen/ui_screen/new_login_screen/home%20_screen_amit.dart';

import 'create2_account_screen.dart';

class HomeLoginScreen extends StatefulWidget {
  const HomeLoginScreen({super.key});

  @override
  State<HomeLoginScreen> createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/shape7.png',
            ),
            SizedBox(
              height: 25,
            ),
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
              emailController,
              'enter email',
              Icons.email_outlined,
            ),
            SizedBox(height: 20),
            buildTextField1(
              passwordController,
              'enter password',
              Icons.password_outlined,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  Checkbox(
                      side: BorderSide(color: Colors.orange, width: 2),
                      checkColor: Colors.black,
                      activeColor: Colors.orange,
                      value: check,
                      onChanged: (bool? value) {
                        setState(() {
                          check = value!;
                        });
                      }),
                  Text(
                    'Remembers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                getData();
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
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do Not Have An Account?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Create2AccountScreen(),
                          ));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Image.asset('assets/shape6.png'),
          ],
        ),
      ),
    );
  }

  Future getData() async {
    String e=emailController.text;
    String p=passwordController.text;
    SharedPreferences sh = await SharedPreferences.getInstance();
    String? emailvalue = sh.getString('email');
    String? passwordvalue = sh.getString('password');
    sh.setBool('conditionfalse', true);
    if (emailvalue == e && passwordvalue == p) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreenAmit()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Column(children: [Text("Increct email/password please try again")]),
      ));
    }
  }

  Widget buildTextField1(controller, labeltext, icon) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 5),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            labelText: labeltext),
      ),
    );
  }
}
