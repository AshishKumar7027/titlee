import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.redAccent[200],
          title: Text('Loading App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      labelText: 'Enter Email'),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      labelText: 'Enter Password'),
                ),
                SizedBox(height: 20),
                FutureBuilder(
                    future: loadData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      }
                      if (snapshot.hasError) {
                        return Column(
                          children: [
                            Text(
                              'error please try again later',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(height: 16),
                            TextButton(
                              onPressed: () {},
                              child: Text('Retry'),
                            )
                          ],
                        );
                      }
                      return Text(snapshot.data ?? 'loading');
                    }),
                SizedBox(height: 20),
                ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.redAccent[200],
                      )),
                  onPressed: () {
                    loadData();
                  },
                  child: Text('Signup'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> loadData() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    throw 'error';
    // return 'sucsessfuly';
  }
}
