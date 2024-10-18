import 'package:flutter/material.dart';
import 'package:title/screens_dashboard/todo_screen/todo_model_screen.dart';


class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  final textController = TextEditingController();
  final titleController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List<Todo> todolist = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.settings,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.more_vert_outlined,
          ),
          SizedBox(
            width: 16,
          ),
        ],
        backgroundColor: Colors.orange,
        title: Text(
          'Todo Notes...',
          style: TextStyle(
            fontSize: 33,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              buildTextFormField(),
              SizedBox(
                height: 16,
              ),
              buildTextFormField2(),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                  Colors.orange,
                )),
                onPressed: () {
                  Todo todo = Todo(
                      title: titleController.text,
                      time: DateTime.now().toString(),
                      text: textController.text);
                  todolist.add(todo);
                  setState(() {});
                  if (formkey.currentState?.validate() ?? false) {}
                },
                child: Text('Add '),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 200,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
                
                child: Center(
                  child: Column(
                    
                    children: [
                      Text(
                        'Your List',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Icon(Icons.arrow_downward)
                    ],
                  ),
                  
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    reverse: true,
                    shrinkWrap: true,
                    //  physics: NeverScrollableScrollPhysics(),
                    itemCount: todolist.length,
                    itemBuilder: (context, index) {
                      Todo todo = todolist[index];
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onLongPress: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shadowColor: Colors.blue[600],
                                  title: Center(child: Text('Delete Box')),
                                  content: Text(
                                    'Are you sure delete file?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 30,
                                    ),
                                  ),
                                  actions: [
                                    buildTextButton(context, index),
                                    buildTextButton2(context),
                                  ],
                                );
                              });
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Text',
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text(
                                  todo.text,
                                  style: TextStyle(fontSize: 23),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Title',
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                Text(
                                  todo.title,
                                  style: TextStyle(fontSize: 23),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(fontSize: 23),
                                ),
                                Text(todo.time),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                ),
                                Checkbox(
                                  value: todo.isCompleted,
                                  onChanged: (bool? value) {
                                    todo.isCompleted = value ?? false;
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    ));
  }

  TextButton buildTextButton2(BuildContext context) {
    return TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Na',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  );
  }

  TextButton buildTextButton(BuildContext context, int index) {
    return TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      todolist.removeAt(index);
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Ha',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  );
  }

  TextFormField buildTextFormField2() {
    return TextFormField(
              controller: titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.location_on,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  labelText: 'Enter City'),
            );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
              controller: textController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.drive_file_rename_outline,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  labelText: 'Enter Name'),
            );
  }
}
