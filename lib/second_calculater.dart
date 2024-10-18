// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// class SecondCalculater extends StatefulWidget {
//   const SecondCalculater({super.key});
//
//   @override
//   State<SecondCalculater> createState() => _SecondCalculaterState();
// }
//
// class _SecondCalculaterState extends State<SecondCalculater> {
//   int count = 0;
//   TextEditingController controller = TextEditingController();
//   TextEditingController secondcontroller = TextEditingController();
//   Color color = Colors.white;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: color,
//       appBar: AppBar(
//         title: const Text(
//           'SmaRT Calculate',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 30,
//             color: Colors.green,
//           ),
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                    border:  const OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     )),
//
//                     hintText: 'Enter value one'),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 controller:secondcontroller ,
//                 decoration: InputDecoration(
//                  border:  const OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     )),
//
//                     hintText: 'Enter value two'),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                   onPressed: () {
//         String a = controller.text;
//         String b = secondcontroller.text;
//         int p = int.parse(a);
//         int q = int.parse(b);
//         int r = p + q;
//
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Final result is $r'),
//         ));
//         color = Colors.red;
//         setState(() {});
//         },
//           child: Text('Add value'),
//         ),ElevatedButton(
//         onPressed: () {
//           String a = controller.text;
//           String b = secondcontroller.text;
//           int e = int.parse(a);
//           int g = int.parse(b);
//           int f =  e- g;
//
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             content: Text('Final result is $f'),
//           ));
//           color = Colors.yellow;
//           setState(() {});
//         },
//         child: Text('Subtract value'),
//       )
//
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                   onPressed: () {
//                     Fluttertoast.showToast(
//                         msg: "hello",
//                         toastLength: Toast.LENGTH_SHORT,
//                         gravity: ToastGravity.BOTTOM_LEFT,
//                         timeInSecForIosWeb: 1,
//                         backgroundColor: Colors.green,
//                         textColor: Colors.yellow,
//                         fontSize: 50.0
//                     );
//         String a = controller.text;
//         String b = secondcontroller.text;
//         int p = int.parse(a);
//         int q = int.parse(b);
//         int h = p * q;
//
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Final result is $h'),
//         ));
//         color = Colors.blue;
//         setState(() {});
//         },
//           child: Text('Multiply value'),
//         )
//                  ,ElevatedButton(
//       onPressed: () {
//         String a = controller.text;
//         String b = secondcontroller.text;
//         int p = int.parse(a);
//         int q = int.parse(b);
//         double x = p /q;
//
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text('Final result is $x'),
//         ));
//         color = Colors.brown;
//         setState(() {});
//       },
//       child: Text('Divide value'),
//     )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
//
// }
