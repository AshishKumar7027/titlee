import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String? select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'HARYANA DISTRICT NAMES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 100),
                child: DropdownButton(
                    value: select,
                    items: [
                      DropdownMenuItem(
                        value: 'BHIWANI',
                        child: Text(
                          'BHIWANI',
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'HISAR',
                        child: Text('HISAR'),
                      ),
                      DropdownMenuItem(
                        value: 'CHANDIGARH',
                        child: Text('CHANDIGARH'),
                      ),
                      DropdownMenuItem(
                        value: 'FARIDABAD',
                        child: Text('FARIDABAD'),
                      ),
                      DropdownMenuItem(
                        value: 'JIND',
                        child: Text('JIND'),
                      ),
                      DropdownMenuItem(
                        value: 'CHARKHI DADRI',
                        child: Text('CHARKHI DADRI'),
                      ),
                      DropdownMenuItem(
                        value: 'RHOTAK',
                        child: Text('RHOTAK'),
                      ),
                      DropdownMenuItem(
                        value: 'GURUGRAM',
                        child: Text('GURUGRAM'),
                      ),
                      DropdownMenuItem(
                        value: 'PALWAL',
                        child: Text('PALWAL'),
                      ),
                      DropdownMenuItem(
                        value: 'JHAJJAR',
                        child: Text('JHAJJAR'),
                      ),
                      DropdownMenuItem(
                        value: 'REWARI',
                        child: Text('REWARI'),
                      ),
                      DropdownMenuItem(
                        value: 'SIRSA',
                        child: Text('SIRSA'),
                      ),
                      DropdownMenuItem(
                        value: 'KAITHAL',
                        child: Text('KAITHAL'),
                      ),
                      DropdownMenuItem(
                        value: 'PANIPAT',
                        child: Text('PANIPAT'),
                      ),
                      DropdownMenuItem(
                        value: 'SONIPAT',
                        child: Text('SONIPAT'),
                      ),
                      DropdownMenuItem(
                        value: 'KARNAL',
                        child: Text('KARNAL'),
                      ),
                      DropdownMenuItem(
                        value: 'AMBALA',
                        child: Text('AMBALA'),
                      ),
                      DropdownMenuItem(
                        value: 'PUNCKULA',
                        child: Text('PUNCKULA'),
                      ),
                      DropdownMenuItem(
                        value: 'FATEABAD',
                        child: Text('FATEABAD'),
                      ),
                      DropdownMenuItem(
                        value: 'MAHENERGARH',
                        child: Text('MAHENERGARH'),
                      ),
                      DropdownMenuItem(
                        value: 'YAMUNA NAGAR',
                        child: Text('YAMUNA NAGAR'),
                      ),
                      DropdownMenuItem(
                        value: 'NUH',
                        child: Text('NUH'),
                      ),
                    ],
                    onChanged: (value) {
                      select = value;
                      setState(() {});
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 190,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Container(
                    width: 240,
                    height: 50,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      'THIS IS MY  SWEAT STATE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
