import 'package:e_school2/utilities/ui_helper_gadget.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class GadgetsPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  GadgetsPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<GadgetsPage> createState() => _GadgetsPageState();
}

class _GadgetsPageState extends State<GadgetsPage> {
  int currentIndex = 0;
  List<GadgetsPage> gadgets = [
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/charging pod.png',
      subtitle: 'Charging Pods',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff3A3A3A),
      titlebgColor: Color(0xff3A3A3A),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/smartTv.png',
      subtitle: 'Smart TV',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0F0F0F),
      titlebgColor: Color(0xff0F0F0F),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/calculator.png',
      subtitle: 'Calculator',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEB73A3),
      titlebgColor: Color(0xffEB73A3),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/digital_camera.png',
      subtitle: 'Digital Camera',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff176DA8),
      titlebgColor: Color(0xff176DA8),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/digital_clock.png',
      subtitle: 'Digital Clock',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff088D84),
      titlebgColor: Color(0xff088D84),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/earPhone.png',
      subtitle: 'Ear Phone ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFE7020),
      titlebgColor: Color(0xffFE7020),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/laptop.png',
      subtitle: 'Laptop',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff6125AA),
      titlebgColor: Color(0xff6125AA),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/router.png',
      subtitle: 'Router',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff596269),
      titlebgColor: Color(0xff596269),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/smart_watch.png',
      subtitle: 'Smart Watch',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffC33067),
      titlebgColor: Color(0xffC33067),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/tablet.png',
      subtitle: 'Tablet',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff7E3B4B),
      titlebgColor: Color(0xff7E3B4B),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/thermometer.png',
      subtitle: 'Thermometer',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4085A9),
      titlebgColor: Color(0xff4085A9),
    ),
    GadgetsPage(
      imageUrl: 'assets/images/gadgets/printer.png',
      subtitle: 'Printer',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8A5530),
      titlebgColor: Color(0xff8A5530),
    ),
  ];
  void onNextTap() {
    if (currentIndex < gadgets.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void onPreviousTap() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    GadgetsPage currentAnimal = gadgets[currentIndex];
    return UIHelperGadget(
      title: 'Gadgets',
      // titleBgColor: titlebgColor[currentIndex],
      imgUrl: currentAnimal.imageUrl,
      subTitle: currentAnimal.subtitle,
      mainBgColor: currentAnimal.backgroundColor,
      btnBgColor: currentAnimal.btnBackgroundColor,
      titleBgColor: currentAnimal.titlebgColor,
      // imgUrl: imageUrls[currentIndex],
      // subTitle: subtitles[currentIndex],
      // mainBgColor: backgroundColors[currentIndex],
      // btnBgColor: btnBackgroundColor[currentIndex],
      subTitleBgColor: currentAnimal.btnBackgroundColor,
      btnElvationColor: Colors.red,
      onPreviousTap: onPreviousTap,
      onNextTap: onNextTap,
      titleSize: 30,
      subTitleSize: 36,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
    );
  }
}
