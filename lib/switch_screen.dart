import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
   SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool changevalue=false;
  bool selected =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch On Or Off Button'),
      ),
      backgroundColor: changevalue?Colors.yellow:Colors.blue,
      body: SizedBox(width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(changevalue?'ON':'OFF'),

            Switch(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.yellow,
                value: changevalue, onChanged: (bool value){
              changevalue=value;
              setState(() {

              });
            }),


            SizedBox(height: 50,),
            Icon(Icons.extension_off_rounded,size: 50,)
          ],
          
        ),
        
      ),
    );
  }
}
