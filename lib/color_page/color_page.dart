import 'package:flutter/material.dart';

import '../homepage.dart';
import '../utilities/ui_helper_color.dart';

class ColorPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  ColorPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  int currentIndex = 0;
  List<ColorPage> gadgets = [
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-1.png',
      subtitle: 'Ruby',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE0115F),
      titlebgColor: Color(0xffE0115F),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335.png',
      subtitle: 'Coral',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF7F50),
      titlebgColor: Color(0xffFF7F50),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-2.png',
      subtitle: 'Rose',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF33A6A),
      titlebgColor: Color(0xffF33A6A),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-3.png',
      subtitle: 'Tangerine',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF08000),
      titlebgColor: Color(0xffF08000),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-4.png',
      subtitle: 'Mint',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff3EB489),
      titlebgColor: Color(0xff3EB489),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-5.png',
      subtitle: 'Charcoal',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff444444),
      titlebgColor: Color(0xff444444),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-6.png',
      subtitle: 'Lavender',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff967BB6),
      titlebgColor: Color(0xff967BB6),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/Vector 335-7 (1).png',
      subtitle: 'Indigo',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4B0082),
      titlebgColor: Color(0xff4B0082),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/black.png',
      subtitle: 'Black',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff000000),
      titlebgColor: Color(0xff000000),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/blue.png',
      subtitle: 'Blue',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0000FF),
      titlebgColor: Color(0xff0000FF),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/brown.png',
      subtitle: 'Silver',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffC0C0C0),
      titlebgColor: Color(0xffC0C0C0),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/green.png',
      subtitle: 'Green ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff008000),
      titlebgColor: Color(0xff008000),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/orangec.png',
      subtitle: 'Orange',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFFA500),
      titlebgColor: Color(0xffFFA500),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/gold.png',
      subtitle: 'Gold',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFFD700),
      titlebgColor: Color(0xffFFD700),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/pink.png',
      subtitle: 'Pink',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFFC0CB),
      titlebgColor: Color(0xffFFC0CB),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/purple.png',
      subtitle: 'Purple',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff800080),
      titlebgColor: Color(0xff800080),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/red.png',
      subtitle: 'Red',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF0000),
      titlebgColor: Color(0xffFF0000),
    ),
    ColorPage(
      imageUrl: 'assets/images/color/yellow.png',
      subtitle: 'Yellow',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFFFF00),
      titlebgColor: Color(0xffFFFF00),
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
    ColorPage currentAnimal = gadgets[currentIndex];
    return UIHelperColor(
      title: 'Colors',
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
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
      subTitleSize: 36,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
    );
  }
}
