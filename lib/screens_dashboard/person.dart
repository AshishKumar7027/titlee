

import '../message_class.dart';

class Person{
  String name;
  String imgurl;
  String mobileNo;
  List<Message> messages;
  Person({
    required this.name,
   required this.imgurl,
   required this.messages,
   required this.mobileNo,
});
}
// Person(name: 'Rahul', imgurl: ''),
// messages: [
// Message(msg: 'how are u bro', time: '3:56', otherperson: 'ramesh',isSend: false)
// ]),
// messages: [
// Message(msg: 'i needs a car', time: '2:56', otherperson: 'bholi jio',isSend: false)
// ] ,
// messages: [
// Message(msg: 'do u play volly boll', time: '12:05', otherperson: 'anil',isSend: true)
// ]),
// , messages: [
// Message(msg: 'do you take tea', time: '12:05', otherperson: 'arjun',isSend: true)
// ]),
// Person(name: 'Soniya', messages: [
// Message(msg: 'you are ready', time: '12:05', otherperson: 'ansh',isSend: true)
// ]),
// ];
