

import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
              color= Colors.red;
                setState(() {
                });
              }, child: Text('red')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.green;
                setState(() {
                });
              }, child: Text('grenn')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.blue;
                setState(() {
                });
              }, child: Text('blue')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.black;
                setState(() {
                });
              }, child: Text('black')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.purple;
                setState(() {
                });
              }, child: Text('purple')),SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.brown;
                setState(() {
                });
              }, child: Text('brown')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){
                color= Colors.yellow;
                setState(() {
                });
              }, child: Text('yellow')),

            ],
          ),

        ],
      ),
    );
  }
}
