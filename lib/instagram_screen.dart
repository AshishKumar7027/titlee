import 'package:flutter/material.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16),
            child: Row(
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.messenger_outline, color: Colors.black),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListView(
                          shrinkWrap: true,


                        ),
                      ],
                    );
                  }),
            )),
      ),
    );
  }
}
