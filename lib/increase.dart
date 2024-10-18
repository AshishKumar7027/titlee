import 'package:flutter/material.dart';

import 'next_screen.dart';

class Increase extends StatefulWidget {
  const Increase({super.key});

  @override
  State<Increase> createState() => _IncreaseState();
}

class _IncreaseState extends State<Increase> {
  late int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Count = $count',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    count = count + 1;
                    setState(() {});
                  },
                  child: Text('Increase')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    count = count - 1;
                    setState(() {});
                  },
                  child: Text('Decrease')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return NextScreen();
                    }));


                  },
                  child: Text('Next Screen')),
            ],
          ),
        ],
      ),
    );
  }
}
