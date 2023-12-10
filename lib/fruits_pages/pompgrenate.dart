// import 'package:flutter/material.dart';
//
// import '../utilities/ui_helper.dart';
// import 'apple.dart';
//
// class PompgranatePage extends StatefulWidget {
//   const PompgranatePage({super.key});
//
//   @override
//   State<PompgranatePage> createState() => _PompgranatePageState();
// }
//
// class _PompgranatePageState extends State<PompgranatePage> {
//   @override
//   Widget build(BuildContext context) {
//     return UIHelper(
//       title: 'Fruit',
//       titleColor: Colors.white,
//       imgUrl: 'assets/images/fruits/pomgranate.png',
//       subTitle: 'Pomegranate',
//       mainBgColor: Colors.white,
//       subTitleBgColor: Colors.red.shade900,
//       btnElvationColor: Colors.red,
//       onPreviousTap: () {
//         Navigator.pop(context);
//       },
//       onNextTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Apple(),
//             ));
//       },
//       titleSize: 30,
//       fontFamily: 'Andika-BoldItalic',
//       btnBgColor: Colors.red.shade900,
//       titleBgColor: Colors.red.shade900,
//       subTitleSize: 36,
//     );
//   }
// }
