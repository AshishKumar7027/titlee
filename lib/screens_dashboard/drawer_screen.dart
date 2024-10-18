import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Demo App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Text(
                          'PUBG',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                          
                        ),
                        
                        borderRadius: BorderRadius.circular(20),
                      ),Text('bgmiofficial@2100gmail.com')
                      ,
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('My Profile'),
                  leading: Icon(Icons.account_box),

                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),

                ),ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),

                ),ListTile(
                  title: Text('Contacts'),
                  leading: Icon(Icons.contact_mail),

                ),ListTile(
                  title: Text('Color Theme'),
                  leading: Icon(Icons.color_lens_outlined),

                ),ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),

                ),




              ],
            )
          ],
        ),
      ),
    ));
  }
}
