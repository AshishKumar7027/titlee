import 'package:flutter/material.dart';

class Alert2Screen extends StatefulWidget {
  const Alert2Screen({super.key});

  @override
  State<Alert2Screen> createState() => _Alert2ScreenState();
}

class _Alert2ScreenState extends State<Alert2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Alert    iTEM',
          style: TextStyle(
            fontSize: 30
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.blue,
                    ),
                    shadowColor: Colors.black,
                    title: Text('Delete Item'),
                    content: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Do you want to delete photo'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                            'Deleted item',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          )));
                        },
                        child: Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('No'),
                      ),
                    ],
                  );
                });
          },
          child: Text('Delete Photo'),
        ),
      ),
    );
  }
}
