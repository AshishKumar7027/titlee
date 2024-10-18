import 'package:flutter/material.dart';

class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  int count = 0;
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  Color backgroundcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Text(
          'Calculater App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: firstcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  )),
                  hintText: 'Enter first number',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: secondcontroller,
                decoration: InputDecoration( border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    )),

                    hintText: 'Enter second number',
                    suffixStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 100,
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String a = firstcontroller.text;
                        String b = secondcontroller.text;
                        int x = int.parse(a);
                        int y = int.parse(b);
                        int z = x + y;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Result is $z',
                          ),
                        ));
                        backgroundcolor = Colors.orange;
                        setState(() {});
                      },
                      child: Text('Add')),
                  ElevatedButton(
                      onPressed: () {
                        String a = firstcontroller.text;
                        String b = secondcontroller.text;
                        int x = int.parse(a);
                        int y = int.parse(b);
                        int z = x - y;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          'Result is $z',
                        )));
                        backgroundcolor = Colors.blue;
                        setState(() {});
                      },
                      child: Text('Subtract')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String a = firstcontroller.text;
                        String b = secondcontroller.text;
                        int x = int.parse(a);
                        int y = int.parse(b);
                        int z = x * y;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          'Result is $z',
                        )));
                        backgroundcolor = Colors.yellow;
                        setState(() {});
                      },
                      child: Text('Multiply')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String a = firstcontroller.text;
                        String b = secondcontroller.text;
                        int x = int.parse(a);
                        int y = int.parse(b);
                        double z = x / y;

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          'Result is $z',
                        )));
                        backgroundcolor = Colors.brown;
                        setState(() {});
                      },
                      child: Text('Divide')),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
