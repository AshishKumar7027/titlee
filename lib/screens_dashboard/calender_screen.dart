import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Calender 2024',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    dateTime = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2024),
                    );
                    setState(() {});
                    print(dateTime?.day ?? '');
                    print(dateTime?.month ?? '');
                    print(dateTime?.year ?? '');
                  },
                  child: Text('Open Calendr'),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Day : ${dateTime?.day.toString()}' ?? '',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Month : ${dateTime?.month.toString()}' ?? '',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Year : ${dateTime?.year.toString()}' ?? '',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                SizedBox(
                  height: 100,
                ),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 100,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
