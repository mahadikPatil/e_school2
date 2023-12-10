// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../utilities/ui_helper.dart';
//
// class Strawberry extends StatefulWidget {
//   const Strawberry({super.key});
//
//   @override
//   State<Strawberry> createState() => _StrawberryState();
// }
//
// class _StrawberryState extends State<Strawberry> {
//   @override
//   Widget build(BuildContext context) {
//     return UIHelper(
//       title: 'Fruit',
//       titleBgColor: Color(0xff2F0104),
//       imgUrl: 'assets/images/fruits/strawberry.png',
//       subTitle: 'Strawberry',
//       mainBgColor: Colors.white,
//       subTitleBgColor: Color(0xff2F0104),
//       onPreviousTap: () {
//         Navigator.pop(context);
//       },
//       onNextTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Strawberry()));
//       },
//       titleSize: 36,
//       fontFamily: 'Andika-BoldItalic',
//       btnBgColor: Color(0xff2F0104),
//       titleColor: Colors.white,
//       btnElvationColor: Colors.orange.shade300, subTitleSize: 36,
//     );
//   }
// }
