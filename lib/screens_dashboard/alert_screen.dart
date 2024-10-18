import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  DateTime? dateTime;
  TimeOfDay? timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // DateTime? dateTime = await showDatePicker(
                //   context: context,
                //
                //   firstDate: DateTime(2000),
                //   lastDate: DateTime(2050),
                //
                // );
                // print(dateTime?.day);
                // print(dateTime?.month);
                // print(dateTime?.year);
                // print(dateTime?.hour);

                if (timeOfDay != null) {
                  timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: timeOfDay!,
                  );
                  setState(() {});
                }
              },
              child: Text('Press'),
            ),
          ),
          Text(timeOfDay?.hour.toString() ?? '-'),
          Text(timeOfDay?.minute.toString() ?? '-'),
        ],
      ),
    );
  }
}
