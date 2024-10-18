import 'package:flutter/material.dart';
import 'package:title/screens_dashboard/trytodo_screen/try_model_screen.dart';


class Todo2Screen extends StatefulWidget {
  const Todo2Screen({super.key});

  @override
  State<Todo2Screen> createState() => _Todo2ScreenState();
}

class _Todo2ScreenState extends State<Todo2Screen> {
  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final marksController = TextEditingController();
  List<Student> studentdetail = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'this text form field is required to pay value';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelText: 'enter student name'),
              ),
              SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: marksController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'this text form field is required to pay value';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  labelText: 'enter student marks',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Student student = Student(
                    name: nameController.text,
                    marks: marksController.text,
                  );
                  studentdetail.add(student);
                  setState(() {});
                  if (formkey.currentState?.validate() ?? false) {}
                },
                child: Text('Add List'),
              ),
              SizedBox(height: 16),
              Text('Student Details list'),
              SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context,index){
                    return Divider();
                  },
                  //  shrinkWrap: true,
                    itemCount: studentdetail.length,
                    itemBuilder: (context, index) {
                      Student student = studentdetail[index];
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onLongPress: (){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(

                              title: Text('delete'),
                              content: Text('D Y W T D F'),
                           actions: [
                             TextButton(onPressed: (){
                               Navigator.pop(context);
                               studentdetail.removeAt(index);
                                 setState(() {
                                   
                                 });
                             }, child: Text('Yes'),),
                             TextButton(onPressed: (){
                               Navigator.pop(context);
                             }, child: Text('No'),),
                           ],
                            );

                          });
                        },
                        child: Column(
                          children: [
                            Text(student.name),
                            SizedBox(height: 16),
                            Text(student.marks),
                            SizedBox(height: 16),
                            Checkbox(
                              value: student.isPass,
                              onChanged: ( bool ?value) {
                                student.isPass=value??false;
                                setState(() {
                                  
                                });
                              },
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
    );
  }
}
