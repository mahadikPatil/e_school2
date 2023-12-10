import 'package:e_school2/utilities/ui_helper_bodyParts.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class BodyPartsPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  BodyPartsPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<BodyPartsPage> createState() => _BodyPartsPageState();
}

class _BodyPartsPageState extends State<BodyPartsPage> {
  int currentIndex = 0;
  List<BodyPartsPage> animal = [
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/elephant.png',
      subtitle: 'Elephant',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff252639),
      titlebgColor: Color(0xff252639),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/girraf.png',
      subtitle: 'Girraf',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff521B06),
      titlebgColor: Color(0xff521B06),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/hippopotamus.png',
      subtitle: 'Hippopotamus',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2894C8),
      titlebgColor: Color(0xff2894C8),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/horse.png',
      subtitle: 'Horse ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4F3B35),
      titlebgColor: Color(0xff4F3B35),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/koala.png',
      subtitle: 'Koala',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF8081),
      titlebgColor: Color(0xffFF8081),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/lion.png',
      subtitle: 'Lion',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff984E1A),
      titlebgColor: Color(0xff984E1A),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/monkey.png',
      subtitle: 'Monkey',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff016DAE),
      titlebgColor: Color(0xff016DAE),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/Panda.png',
      subtitle: 'Panda',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff383433),
      titlebgColor: Color(0xff383433),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/tiger.png',
      subtitle: 'Tiger',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff096700),
      titlebgColor: Color(0xff096700),
    ),
    BodyPartsPage(
      imageUrl: 'assets/images/bodyParts/zebra.png',
      subtitle: 'Zebra',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8A5530),
      titlebgColor: Color(0xff8A5530),
    ),
  ];
  void onNextTap() {
    if (currentIndex < animal.length - 1) {
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
    BodyPartsPage currentAnimal = animal[currentIndex];
    return UIHelperBodyParts(
      title: 'Body Parts',
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
      subTitleBgColor: Colors.red.shade900,
      btnElvationColor: Colors.red,
      onPreviousTap: onPreviousTap,
      onNextTap: onNextTap,
      titleSize: 30,
      subTitleSize: 36,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
    );
  }
}
