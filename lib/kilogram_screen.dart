import 'package:flutter/material.dart';

class KilogramScreen extends StatefulWidget {
  const KilogramScreen({super.key});

  @override
  State<KilogramScreen> createState() => _KilogramScreenState();
}

class _KilogramScreenState extends State<KilogramScreen> {
  final formkey = GlobalKey<FormState>();
  final meterController = TextEditingController();
  final meter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Meter Calculator'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              controller: meterController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'feild jo hai vo barni jaruri h';
                }
              },
              decoration: InputDecoration(hintText: 'Enter value'),
            ),
            SizedBox(
              height: 29,
            ),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState?.validate()?? false) {
                  int meter = int.parse(meterController.text);
                  meter = meter * 3;
                  setState(() {});
                }
              },
              child: Text('Convert to feet'),
            ),
            SizedBox(
              height: 29,
            ),
            Text('Feet : ${meter.toString()}')
          ],
        ),
      ),
    ));
  }
}
