import 'package:flutter/material.dart';
import 'package:title/quiz_app_screem/study_lesson.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GK Quiz\n Enrich your Knowledge'),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.orange,
            size: 30,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 70,
                  height: 40,
                  color: Colors.red,
                  
                ),
              )
            ],)
          )
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return StudyLesson();
                  },
                ));
              },
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.account_box_sharp,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Lesson to Study',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.mark_as_unread,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Practice',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.text_snippet,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Take a Test',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.maps_home_work_sharp,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Country Quiz',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.man,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Human Body',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
