import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class User {
  String name;
  String address;
  int age;
  Color color;

  User({
    required this.age,
    required this.name,
    required this.address,
    this.color = Colors.blue
  });
}
