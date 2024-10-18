import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Count $count',style: TextStyle(fontSize: 30,color: Colors.orange),),
          SizedBox(
            height: 16,

          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                count = count + 1;
                setState(() {
                });
              }, child: Text('Increase')),
               SizedBox(
                width: 20,
                 ),
              ElevatedButton(onPressed: (){
                count = count - 1;
                setState(() {
                });
              }, child: Text('Decrease')),
            ],
          ),

        ],
      ),
    );
  }
}
