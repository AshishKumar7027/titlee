// import 'package:flutter/material.dart';
//
//
//
// class FlutterGems extends StatelessWidget {
//   const FlutterGems({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       bottomNavigationBar:  AnimatedNotchBottomBar(
//         pageController: _pageController,
//         bottomBarItems: [
//       const BottomBarItem(
//       inActiveItem: Icon(
//       Icons.home_filled,
//         color: Colors.blueGrey,
//       ),
//       activeItem: Icon(
//         Icons.home_filled,
//         color: Colors.blueAccent,
//       ),
//       itemLabel: 'Page 1',
//     ),
//      //   const BottomBarItem(
//           inActiveItem: Icon(
//             Icons.star,
//             color: Colors.blueGrey,
//           ),
//           activeItem: Icon(
//             Icons.star,
//             color: Colors.blueAccent,
//           ),
//           itemLabel: 'Page 2',
//         ),
//
//         ///svg item
//         BottomBarItem(
//           inActiveItem: SvgPicture.asset(
//             'assets/search_icon.svg',
//             color: Colors.blueGrey,
//           ),
//           activeItem: SvgPicture.asset(
//             'assets/search_icon.svg',
//             color: Colors.black,
//           ),
//           itemLabel: 'Page 3',
//         ),
//         ...
//     ])
//     ));
//   }
// }
