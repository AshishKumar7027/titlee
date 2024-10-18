import 'package:flutter/material.dart';

class DailogboxScreen extends StatefulWidget {
  const DailogboxScreen({super.key});

  @override
  State<DailogboxScreen> createState() => _DailogboxScreenState();
}

class _DailogboxScreenState extends State<DailogboxScreen> {
  TimeOfDay? timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Clock'),),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  if (timeOfDay != null) {
                    timeOfDay = await showTimePicker(
                        context: context, initialTime: timeOfDay!);
                    setState(() {});
                  }
                },
                child: Text('Click watch'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Hour = ${timeOfDay?.hour.toString()}' ?? '-',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                'Minutes = ${timeOfDay?.minute.toString()}' ?? '-',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 70,),
              Icon(Icons.watch_later,size: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
