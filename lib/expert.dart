import 'package:flutter/material.dart';

class Expert extends StatelessWidget {
  const Expert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android Studio'),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Expert();}));

      },child: Text('GoTo Studio'),),
    );
  }
}
