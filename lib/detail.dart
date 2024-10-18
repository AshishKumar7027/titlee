import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/profile.jpg'), // Replace with your image
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daleep Dhani',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'last seen yesterday at 2:32 pm',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.videocam_outlined,
            color: Colors.white,
          ),
          SizedBox(width: 15),
          Icon(Icons.call_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                // Message bubbles
                ChatBubble(
                  message: 'Kam krna suru krde',
                  time: '4:04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'Jitna b smjh aya',
                  time: '4.04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'U have only 24 hrs',
                  time: '4.04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'Use provider',
                  time: '4.04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'N code neat n clean',
                  time: '4.04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'Get x',
                  time: '4:04 pm',
                  isMe: false,
                ),
                ChatBubble(
                  message: 'Okay',
                  time: '4:04 pm',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'Kr lu',
                  time: '4:04 pm',
                  isMe: false,
                ),
                APKBubble(
                  apkName: 'app-release.apk',
                  apkSize: '7.7 MB',
                  message:
                      'apk check krna bhai usne home screen ka diya tha vo shi h kya or ha isme aabi mne 20 item wala use nhi kiya h vo m baad me kr lu ga please check krna uske according',
                  time: '8:18 pm',
                  isMe: false,
                ),
                ChatBubble(
                  message: 'Ok',
                  time: '8:21 pm',
                  isMe: true,
                ),
              ],
            ),
          ),
          // Message typing area
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.attach_file, color: Colors.grey),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Text(
                      "Message",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFF075E54),
                  child: Icon(Icons.mic, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;

  ChatBubble({required this.message, required this.time, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFFE4FFC7) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              time,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

class APKBubble extends StatelessWidget {
  final String apkName;
  final String apkSize;
  final String message;
  final String time;
  final bool isMe;

  APKBubble(
      {required this.apkName,
      required this.apkSize,
      required this.message,
      required this.time,
      required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFFE4FFC7) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.insert_drive_file, color: Colors.blue),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      apkName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      apkSize,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              message,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              time,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
