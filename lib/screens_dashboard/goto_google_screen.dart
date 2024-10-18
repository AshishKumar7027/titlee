import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:title/screens_dashboard/photoview_screen.dart';

import 'package:url_launcher/url_launcher.dart';

class GotoGoogleScreen extends StatefulWidget {
  const GotoGoogleScreen({super.key});

  @override
  State<GotoGoogleScreen> createState() => _GotoGoogleScreenState();
}

class _GotoGoogleScreenState extends State<GotoGoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: buildIconhome(),
        actions: [
          buildIconaccountcircle(),
         const SizedBox(width: 20),
          buildIconmore(),
        ],
        backgroundColor: Colors.blue,
        title: Center(
          child: buildTextResults(),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90,),
                    child: buildTextGoogle(),
                  ),
                  const  SizedBox(height: 30),
                  buildGestureDetector1(),
                  buildGestureDetector2(),
                  buildGestureDetector3(),
                  buildGestureDetector4(),
                  buildGestureDetector5(),
                  buildGestureDetector6(),
                  buildGestureDetector7(),
                  const SizedBox(height: 16),
                  const Icon(FontAwesomeIcons.rocket),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PhotoviewScreen();
                        }));
                      },
                      child: const Text('Go To Car Pic'))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Text buildTextResults() {
    return const Text(
          'Results',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
  }

  Text buildTextGoogle() {
    return const Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  );
  }

  Icon buildIconmore() => const Icon(Icons.more_vert_outlined);

  Icon buildIconaccountcircle() => const Icon(Icons.account_circle);

  Icon buildIconhome() => const Icon(Icons.home);

  GestureDetector buildGestureDetector7() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.whatsapp.com'));
      },
      child: const Text('Go To WhatsApp App',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }

  GestureDetector buildGestureDetector6() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.codexiatechsolutions.com'));
      },
      child: const Text('Go To Codex web',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }

  GestureDetector buildGestureDetector5() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.eastsideflow.com'));
      },
      child: const Text('Go To youtube song App',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }

  GestureDetector buildGestureDetector4() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.myjio.com'));
      },
      child: const Text('Go To MyJio App',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }

  GestureDetector buildGestureDetector3() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.instagram.com'));
      },
      child: const Text('Go To Instagram App',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }

  GestureDetector buildGestureDetector2() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse('http://www.youtube.com'));
      },
      child: const Text(
        'Go To Youtube App',
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector1() {
    return GestureDetector(
      onTap: () {
        launchUrl(
          Uri.parse('http://www.sarkariresult.com'),
        );
      },
      child: const Text('Go To sarkariresult App',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )),
    );
  }
}
