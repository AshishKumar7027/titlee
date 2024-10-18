import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        'assets/login.png',
      ),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 100, top: 150),
              child:const Text(
                'Good\nLuck !',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: 35,
                  right: 35),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: textFeildDecoration('Email Address'),
                    ),
                   const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: textFeildDecoration('Password'),
                    ),
                    const   SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: textFeildDecoration('Re-Password'),
                    ),
                    const  SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const  Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:const Color(0xff4c505b),
                          child: IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: signinbutton('Sign in'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: signinbutton('Forgot Password'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Text signinbutton(String text) {
    return Text(
                         text,
                          style:const TextStyle(
                            color:Color(0xff4c505b),fontSize: 20,
                          decoration: TextDecoration.underline),

                        );
  }

  InputDecoration  textFeildDecoration(String hintText) {
    return InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        border:const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                 Radius.circular(10),
                        )),
                        hintText: hintText);
  }
}
