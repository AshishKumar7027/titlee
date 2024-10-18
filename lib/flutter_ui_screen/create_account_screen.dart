import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('New Create Account', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
          ),

          body: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      labelText: 'Enter Email'),
                ),
                SizedBox(height: 12),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      labelText: 'Enter Password'),
                ),
                
                SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.blue[200],
                      )),
                  onPressed: () {
                    createaccount();
                  },
                  child: Text('Create account',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 60),

              ],
            ),
          ),
        ));
  }
  Future createaccount()async{
    String email= emailController.text;
    String password= passwordController.text;

    SharedPreferences sp = await SharedPreferences.getInstance();
     sp.setString('user_email', email);
     sp.setString('user_password', password);

     print('create account has succesfuly');
     Navigator.pop(context);
  }
}
