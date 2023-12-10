import 'package:flutter/material.dart';

import '../homepage.dart';
import '../utilities/ui_helper_vegetable.dart';

class VegetablePage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  VegetablePage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<VegetablePage> createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  int currentIndex = 0;
  List<VegetablePage> vegetable = [
    VegetablePage(
      imageUrl: 'assets/images/vegetables/Lauki.png',
      subtitle: 'Bottle Guard',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff638915),
      titlebgColor: Color(0xff638915),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/Taro.png',
      subtitle: 'Colocasia',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2B8F35),
      titlebgColor: Color(0xff2B8F35),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/Guwari pods.png',
      subtitle: 'Cluster Beans',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff285306),
      titlebgColor: Color(0xff285306),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/green-peas.png',
      subtitle: 'Green Peas',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff517020),
      titlebgColor: Color(0xff517020),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/beet.png',
      subtitle: 'Beetroot',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff9C021D),
      titlebgColor: Color(0xff9C021D),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/bitter gourd.png',
      subtitle: 'Bitter Gourd',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff558801),
      titlebgColor: Color(0xff558801),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/cabbage.png',
      subtitle: 'Cabbage',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff3B7017),
      titlebgColor: Color(0xff3B7017),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/tomato.png',
      subtitle: 'Tomato',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffBB2027),
      titlebgColor: Color(0xffBB2027),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/couliflower.png',
      subtitle: 'Couliflower ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff909E1D),
      titlebgColor: Color(0xff909E1D),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/Fenugrrek pods.png',
      subtitle: 'Fenugrrek Pods',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4C8324),
      titlebgColor: Color(0xff4C8324),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/Okra.png',
      subtitle: 'Okra',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff789548),
      titlebgColor: Color(0xff789548),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/spinach.png',
      subtitle: 'Spinach',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff30470B),
      titlebgColor: Color(0xff30470B),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/onion.png',
      subtitle: 'Onion',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB22F5E),
      titlebgColor: Color(0xffB22F5E),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/potato.png',
      subtitle: 'Potato',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB16700),
      titlebgColor: Color(0xffB16700),
    ),
    VegetablePage(
      imageUrl: 'assets/images/vegetables/pumpkin.png',
      subtitle: 'Pumpkin',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF76D03),
      titlebgColor: Color(0xffF76D03),
    ),
  ];
  void onNextTap() {
    if (currentIndex < vegetable.length - 1) {
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
    VegetablePage currentAnimal = vegetable[currentIndex];
    return UIHelperVegetables(
      title: 'Vegetable',
      // titleBgColor: titlebgColor[currentIndex],
      imgUrl: currentAnimal.imageUrl,
      subTitle: currentAnimal.subtitle,
      mainBgColor: currentAnimal.backgroundColor,
      btnBgColor: currentAnimal.btnBackgroundColor,
      titleBgColor: currentAnimal.titlebgColor,
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
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
    );
  }
}
