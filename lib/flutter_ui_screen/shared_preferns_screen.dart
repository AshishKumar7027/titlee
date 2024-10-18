
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:title/flutter_ui_screen/add_person_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  List<Map<String,dynamic>> maplist =[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreenAccent,
            title: Text(
              'Person email and password ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AddPersonScreen();
              }));
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(22),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.blue[200],
                        )),
                    onPressed: () {
                      fetchpersondata();
                    },
                    child: Text(
                      'GEt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: maplist.length,
                        itemBuilder: (context,index){
                          Map<String,dynamic> map = maplist[index];
                          return Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [


                                  Text('Email'),
                                  Text(map['email']),
                                ],
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Password'),
                                  Text(map['password']),
                                ],
                              ),Divider(),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ));
  }





  Future fetchpersondata()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    List<String>? stringlist=sp.getStringList('personfirst');
    if(stringlist!=null){
      maplist.clear();
      for(int a=0;a<stringlist.length;a++){
        String mapstring = stringlist[a];
        Map<String,dynamic> map = jsonDecode(mapstring);
        maplist.add(map);
      }
      setState(() {

      });
    }
  }
}