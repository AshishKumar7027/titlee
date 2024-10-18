import 'package:flutter/material.dart';

class SinglePostScreen extends StatelessWidget {
  const SinglePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                topLeft: Radius.circular(40)),
          ),
          margin: EdgeInsets.only(left: 30),
          width: double.infinity,
          height: 120,
          child: Image.asset('assets/OIP.jpeg'),
        ),
        SizedBox(height: 4),
        Container(
          margin: EdgeInsets.only(left: 40,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Subscribe to flutter in post',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.comment_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(width: 6),
                  Text('80',style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(width: 6),
                  Text('750k',style: TextStyle(color: Colors.white,)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
