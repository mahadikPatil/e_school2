import 'package:e_school2/utilities/ui_helper_bird.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class BirdsPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;

  BirdsPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<BirdsPage> createState() => _BirdsPageState();
}

class _BirdsPageState extends State<BirdsPage> {
  int currentIndex = 0;
  List<BirdsPage> birds = [
    BirdsPage(
      imageUrl: 'assets/images/birds/Crane.png',
      subtitle: 'Sarus Crane',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff32545E),
      titlebgColor: Color(0xff32545E),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Flamingo.png',
      subtitle: 'Flamingo',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB24782),
      titlebgColor: Color(0xffB24782),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Peacock.png',
      subtitle: 'Peacock',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0049B2),
      titlebgColor: Color(0xff0049B2),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Pigeon.png',
      subtitle: 'Pigeon',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff16323D),
      titlebgColor: Color(0xff16323D),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Vulture.png',
      subtitle: 'Vulture',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff933120),
      titlebgColor: Color(0xff933120),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Black_Drongo.png',
      subtitle: 'Black Drongo',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff252639),
      titlebgColor: Color(0xff252639),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/kite.png',
      subtitle: 'Brahminy Kite',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff521B06),
      titlebgColor: Color(0xff521B06),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/bulbul.png',
      subtitle: 'Bulbul',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff4F3B35),
      titlebgColor: Color(0xff4F3B35),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/Eagle.png',
      subtitle: 'Eagle ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCB8100),
      titlebgColor: Color(0xffCB8100),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/fairy pitta.png',
      subtitle: 'fairy pitta',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff984E1A),
      titlebgColor: Color(0xff984E1A),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/hornbill.png',
      subtitle: 'Hornbill',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff010105),
      titlebgColor: Color(0xff010105),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/kingfisher.png',
      subtitle: 'kingfisher',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff016DAE),
      titlebgColor: Color(0xff016DAE),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/myna.png',
      subtitle: 'Mynah',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff383433),
      titlebgColor: Color(0xff383433),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/parrot.png',
      subtitle: 'Parrot',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff096700),
      titlebgColor: Color(0xff096700),
    ),
    BirdsPage(
      imageUrl: 'assets/images/birds/robin.png',
      subtitle: 'Robin',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8A5530),
      titlebgColor: Color(0xff8A5530),
    ),
  ];
  void onNextTap() {
    if (currentIndex < birds.length - 1) {
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
    BirdsPage currentAnimal = birds[currentIndex];
    return UIHelperBirds(
      title: 'Birds',
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
