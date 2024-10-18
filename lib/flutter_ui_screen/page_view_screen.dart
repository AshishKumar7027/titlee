import 'package:flutter/material.dart';
import 'package:title/flutter_ui_screen/page_view_model_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  List<Phone> phonelist = [
    Phone(phonename: 'samsung', price: 149000, color: Colors.blue),
    Phone(phonename: 'iphone', price: 120000, color: Colors.pink),
    Phone(phonename: 'one plus', price: 41000, color: Colors.yellow),
    Phone(phonename: 'redmi', price: 15000, color: Colors.orange),
  ];
  final phoneController = PageController();
  int phoneindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 400,
              child: PageView.builder(
                controller: phoneController,
                physics: BouncingScrollPhysics(),
                itemCount: phonelist.length,
                itemBuilder: (context, index) {
                  Phone phone = phonelist[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      color: phone.color,
                      child: Text(
                        phone.phonename,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    phoneindex++;
                    phoneController.jumpToPage(phoneindex);
                  },
                  child: Text('Next Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    phoneindex--;
                    phoneController.jumpToPage(phoneindex);
                  },
                  child: Text('Previous Page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
