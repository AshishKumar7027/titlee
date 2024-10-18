import 'package:flutter/material.dart';
import 'package:title/user.dart';


class Home extends StatelessWidget {
  Home({super.key});

  final List<User> userlist = [
    User(age: 20, name: 'Ashu', address: 'Bhiwani', color: Colors.green),
    User(age: 25, name: 'Rahul', address: 'Bahel', color: Colors.orange),
    User(
      age: 30,
      name: 'Sanjeev',
      address: 'Loharu',
    ),
    User(age: 30, name: 'Dinesh', address: 'Jaipur', color: Colors.redAccent),
    User(age: 35, name: 'Krishan', address: 'Delhi', color: Colors.brown),
    User(
        age: 40,
        name: 'Rajesh',
        address: 'Mumbai',
        color: Colors.lightBlueAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: userlist.length,
            itemBuilder: (context, i) {
              User value = userlist[i];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: value.color,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          value.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          value.age.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          value.address,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    ));
  }
}
