import 'package:e_school2/utilities/ui_helper_number.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class NumberPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  NumberPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });
  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  int currentIndex = 0;
  List<NumberPage> number = [
    NumberPage(
      imageUrl: 'assets/images/number/zero.png',
      subtitle: 'Zero',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff008EC0),
      titlebgColor: Color(0xff008EC0),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/one.png',
      subtitle: 'One',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFE6A00),
      titlebgColor: Color(0xffFE6A00),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/two.png',
      subtitle: 'Two',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffDF858F),
      titlebgColor: Color(0xffDF858F),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/three.png',
      subtitle: 'three',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffDCA609),
      titlebgColor: Color(0xffDCA609),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/four.png',
      subtitle: 'Four ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF0000),
      titlebgColor: Color(0xffFF0000),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/five.png',
      subtitle: 'Five',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEA00FF),
      titlebgColor: Color(0xffEA00FF),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/six.png',
      subtitle: 'Six',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff699AD2),
      titlebgColor: Color(0xff699AD2),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/Seven.png',
      subtitle: 'Seven',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEB008B),
      titlebgColor: Color(0xffEB008B),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/Eight.png',
      subtitle: 'Eight',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB4C91F),
      titlebgColor: Color(0xffB4C91F),
    ),
    NumberPage(
      imageUrl: 'assets/images/number/nine.png',
      subtitle: 'Nine',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFB9EC6),
      titlebgColor: Color(0xffFB9EC6),
    ),
  ];
  void onNextTap() {
    if (currentIndex < number.length - 1) {
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
    NumberPage currentAnimal = number[currentIndex];
    return UIHelperNumber(
      title: 'Numbers',
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
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
      onNextTap: onNextTap,
      titleSize: 30,
      subTitleSize: 36,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
    );
  }
}
