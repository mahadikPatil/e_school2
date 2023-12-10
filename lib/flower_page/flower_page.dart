import 'package:e_school2/utilities/ui_helper_flower.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class FlowerPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  FlowerPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<FlowerPage> createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
  int currentIndex = 0;
  List<FlowerPage> flower = [
    FlowerPage(
      imageUrl: 'assets/images/flower/Morning GLory.png',
      subtitle: 'Morning GLory',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0360B8),
      titlebgColor: Color(0xff0360B8),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/ixora.png',
      subtitle: 'Ixora',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEB1C19),
      titlebgColor: Color(0xffEB1C19),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/Dahlia pinnata.png',
      subtitle: 'Dahlia',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff900C16),
      titlebgColor: Color(0xff900C16),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/Bougainvillea.png',
      subtitle: 'Bougainvillea',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff9A235F),
      titlebgColor: Color(0xff9A235F),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/asian-pigeonwings.png',
      subtitle: 'Shankarpushpi',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff1A16C0),
      titlebgColor: Color(0xff1A16C0),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/red-canna-lily.png',
      subtitle: 'Canna Lily',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff770F01),
      titlebgColor: Color(0xff770F01),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/hibiscus.png',
      subtitle: 'Hibiscus',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff74001B),
      titlebgColor: Color(0xff74001B),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/jasmine.png',
      subtitle: 'Jasmine',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4B862A),
      titlebgColor: Color(0xff4B862A),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/Lotus.png',
      subtitle: 'Lotus',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffC02859),
      titlebgColor: Color(0xffC02859),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/marigold.png',
      subtitle: 'Marigold ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF7401),
      titlebgColor: Color(0xffFF7401),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/phalaenopsis.png',
      subtitle: 'Orchid',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB6376E),
      titlebgColor: Color(0xffB6376E),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/rose.png',
      subtitle: 'Rose',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff950215),
      titlebgColor: Color(0xff950215),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/sunflower.png',
      subtitle: 'Sunflower',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF29500),
      titlebgColor: Color(0xffF29500),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/tulips.png',
      subtitle: 'Tulips',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE45B65),
      titlebgColor: Color(0xffE45B65),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/violets.png',
      subtitle: 'Violets',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffA673EA),
      titlebgColor: Color(0xffA673EA),
    ),
    FlowerPage(
      imageUrl: 'assets/images/flower/Frangipani.png',
      subtitle: 'Frangipani',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff7E944B),
      titlebgColor: Color(0xff7E944B),
    ),
  ];
  void onNextTap() {
    if (currentIndex < flower.length - 1) {
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
    FlowerPage currentAnimal = flower[currentIndex];
    return UIHelperFlower(
      title: 'Flowers',
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
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
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
