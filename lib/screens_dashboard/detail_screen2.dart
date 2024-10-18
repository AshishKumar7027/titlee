import 'package:flutter/material.dart';
import 'package:title/screens_dashboard/person.dart';

import '../message_class.dart';


class DetailScreen2 extends StatefulWidget {
  const DetailScreen2({required this.person, super.key});

  final Person person;

  @override
  State<DetailScreen2> createState() => _DetailScreen2State();
}

class _DetailScreen2State extends State<DetailScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown,
      appBar: AppBar(
        title: ListTile(
          title: Text(
            widget.person.name,
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(widget.person.mobileNo),
        ),
        actions: [
          Icon(Icons.phone),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert_outlined),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: widget.person.messages.length,
              itemBuilder: (context, int index) {
                Message message = widget.person.messages[index];
                return Align(
                  alignment:
                      message.isSend ? Alignment.topRight : Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),

                    width: MediaQuery.of(context).size.width * 0.5,

                    decoration: BoxDecoration(
                        color:message.isSend ? Colors.lightGreenAccent[200]:Colors.blue[200],
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(message.msg),
                        message.image!=null?Image.network(message.image!,
                        width: MediaQuery.of(context).size.width*0.5,):SizedBox(),

                        Text(message.time),
                      ],
                    ),

                  ),
                );
              })),
    );
  }
}
