// import 'package:flutter/material.dart';
//
// import '../utilities/ui_helper.dart';
//
// import 'strawberry.dart';
//
// class Banana extends StatefulWidget {
//   const Banana({super.key});
//
//   @override
//   State<Banana> createState() => _BananaState();
// }
//
// class _BananaState extends State<Banana> {
//   @override
//   Widget build(BuildContext context) {
//     return UIHelper(
//       title: 'Fruit',
//       titleBgColor: Color(0xffF6B40A),
//       imgUrl: 'assets/images/fruits/banana.png',
//       subTitle: 'Banana',
//       mainBgColor: Colors.white,
//       subTitleBgColor: Color(0xffF6B40A),
//       onPreviousTap: () {
//         Navigator.pop(context);
//       },
//       onNextTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Strawberry()));
//       },
//       titleSize: 36,
//       fontFamily: 'Andika-BoldItalic',
//       btnBgColor: Color(0xffF6B40A),
//       titleColor: Colors.white,
//       btnElvationColor: Colors.redAccent, subTitleSize: 36,
//     );
//   }
// }
