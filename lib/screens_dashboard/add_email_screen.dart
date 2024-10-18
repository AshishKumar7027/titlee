import 'package:flutter/material.dart';

class AddEmailScreen extends StatefulWidget {
  const AddEmailScreen({super.key});

  @override
  State<AddEmailScreen> createState() => _AddEmailScreenState();
}

class _AddEmailScreenState extends State<AddEmailScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: emailcontroller,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some character';
                  }
                  ;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                    hintText: 'Enter Your Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordcontroller,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'You Can Not Enter Numbers Below 8 Characters';
                  }
                  if (value.length <= 8) {
                    return 'You Can Not Enter Numbers Below 8 Characters';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                    hintText: 'Enter Your Strong Password'),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  String emailname = emailcontroller.text;
                  String passwordname = passwordcontroller.text;
                  print('Email = $emailname');
                  print('Password = $passwordname');
                  // todo ferform any action
                  if (formkey.currentState != null &&
                      formkey.currentState!.validate()) {}
                },
                child: const Text('Sign in'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
