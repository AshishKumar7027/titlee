import 'package:flutter/material.dart';

class SwitchdropdownScreen extends StatefulWidget {
  const SwitchdropdownScreen({super.key});

  @override
  State<SwitchdropdownScreen> createState() => _SwitchdropdownScreenState();
}

class _SwitchdropdownScreenState extends State<SwitchdropdownScreen> {
  String? funds;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: DropdownButton(
                  value: funds,
                  items: [
                    DropdownMenuItem(value: 'iphone',child: Text('iphone'),),
                    DropdownMenuItem(value: 'sumsung',child: Text('sumsung'),),
                    DropdownMenuItem(value: 'one plus',child: Text('one plus'),),
                    DropdownMenuItem(value: 'redmi',child: Text('realme'),),
                  ],
                  onChanged: ( value){
                    funds=value;
                    setState(() {

                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
