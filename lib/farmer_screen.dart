import 'package:flutter/material.dart';


import 'farmer_details.dart';

class FarmerScreen extends StatelessWidget {
  const FarmerScreen({required this.farmer, super.key});

  final Farmer farmer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Farmer Details'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            buildRow('Name', farmer.name),
            buildRow('Last Name', farmer.lastname),
            buildRow('Mobile', farmer.mobile),
            buildRow('Tractor', farmer.tractorname),
            buildRow('Account Number', farmer.account),
            buildRow('City', farmer.city),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.bus_alert_rounded,
              size: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    ));
  }

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40,left: 10,right: 10,top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
