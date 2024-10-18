import 'package:flutter/material.dart';

import '../farmer_details.dart';
import '../farmer_screen.dart';

class Switch2Screen extends StatefulWidget {
  const Switch2Screen({super.key});

  @override
  State<Switch2Screen> createState() => _Switch2ScreenState();
}

class _Switch2ScreenState extends State<Switch2Screen> {
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  final mobileController = TextEditingController();
  final tractornameController = TextEditingController();
  final accountController = TextEditingController();
  final cityController = TextEditingController();
  String? dropvalue;
  bool valueswitch = true;
  List<String> droplist = [
    'FarmTrac',
    'Swaraj',
    'Arjun ',
    'New Holland',
    'Eicher',
    'John Dear',
    'Mahindra',
    'Sonalika',
    'Kubato',
    'Indo Farm',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.green,
        title: Text(
          'FARMER LOAN FARM',
          style: TextStyle(
            fontWeight: FontWeight.w900,

          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTextField(
                hintname: 'Enter Farmer Name', controllervalue: nameController),
            buildTextField(
                hintname: 'Enter Last Name',
                controllervalue: lastnameController),
            buildTextField(
              keyboard: TextInputType.number,
              hintname: ' Enter Mobile',
              controllervalue: mobileController,
            ),
            buildTextField(
                hintname: 'Enter Tractor Name',
                controllervalue: tractornameController),
            buildTextField(
                keyboard: TextInputType.number,
                hintname: 'Enter Account Number',
                controllervalue: accountController),
            buildTextField(

                hintname: 'Enter City',
                controllervalue: cityController),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButton(
                    value: dropvalue,
                    items: droplist.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      dropvalue = value;
                      setState(() {});
                    }),
                Text(
                  'Tractors List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Switch(
                    value: valueswitch,
                    onChanged: (bool value) {
                      valueswitch = value;
                      setState(() {});
                    }),
                Text(
                  'Are You Male',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String lastname = lastnameController.text;
                String mobile = mobileController.text;
                String tractor = tractornameController.text;
                String account = accountController.text;
                String city = cityController.text;
                print(name);
                print(lastname);
                print(mobile);
                print(tractor);
                print(account);
                print(city);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FarmerScreen(
                    farmer: Farmer(
                      name: name,
                      lastname: lastname,
                      mobile: mobile,
                      tractorname: tractor,
                      account: account,
                      city: city,
                    ),
                  );
                }));
              },
              child: Text('Next Screen'),
            ),
            SizedBox(height: 50,),
            Icon(Icons.pageview_rounded,size: 100,)
          ],
        ),
      ),
    ));
  }

  Widget buildTextField(
      {required hintname, required controllervalue, keyboard}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        keyboardType: keyboard,
        controller: controllervalue,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            hintText: hintname),
      ),
    );
  }
}
