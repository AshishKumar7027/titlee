import 'package:flutter/material.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                   color = Colors.red;
                    setState(() {});
                  },
                  child: Text('Red Button')),
              SizedBox(
                width: 2,
              ),
              ElevatedButton(
                  onPressed: () {
                    color = Colors.blue;
                    setState(() {});
                  },
                  child: Text('Blue ')),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    color = Colors.yellow;
                    setState(() {});
                  },
                  child: Text('Yellow Button')),

            ],
          ),
        ],
      ),
    );
  }
}

