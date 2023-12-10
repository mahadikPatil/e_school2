import 'package:e_school2/utilities/ui_helper_wildAnimal.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class WildAnimalPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  final Color mainbgColor;
  WildAnimalPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
    required this.mainbgColor,
  });

  @override
  State<WildAnimalPage> createState() => _WildAnimalPageState();
}

class _WildAnimalPageState extends State<WildAnimalPage> {
  int currentIndex = 0;
  List<WildAnimalPage> animal = [
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/wolf.png',
      subtitle: 'Wolf',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff343434),
      titlebgColor: Color(0xff343434),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/red-panda.png',
      subtitle: 'Red Panda',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff972E21),
      titlebgColor: Color(0xff972E21),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/pangolin.png',
      subtitle: 'Pangolin',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff7C521B),
      titlebgColor: Color(0xff7C521B),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/leopard.png',
      subtitle: 'Snow Leopard',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff03001F),
      titlebgColor: Color(0xff03001F),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/buffalo.png',
      subtitle: 'Gaur',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff232323),
      titlebgColor: Color(0xff232323),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/sloth.png',
      subtitle: 'Sloth Bear',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff6F3105),
      titlebgColor: Color(0xff6F3105),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/rhinoceros.png',
      subtitle: 'Rhinoceros',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff141414),
      titlebgColor: Color(0xff141414),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/elephant.png',
      subtitle: 'Elephant',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff676D6A),
      titlebgColor: Color(0xff676D6A),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/girraf.png',
      subtitle: 'Giraffe',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE95A02),
      titlebgColor: Color(0xffE95A02),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/hippopotamus.png',
      subtitle: 'Hippopotamus',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff36363C),
      titlebgColor: Color(0xff36363C),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/horse.png',
      subtitle: 'Horse ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff82481A),
      titlebgColor: Color(0xff82481A),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/koala.png',
      subtitle: 'Koala',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff59402C),
      titlebgColor: Color(0xff59402C),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/lion.png',
      subtitle: 'Lion',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEB8623),
      titlebgColor: Color(0xffEB8623),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/monkey.png',
      subtitle: 'Monkey',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff7F3E03),
      titlebgColor: Color(0xff7F3E03),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/Panda.png',
      subtitle: 'Panda',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff293134),
      titlebgColor: Color(0xff293134),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/tiger.png',
      subtitle: 'Tiger',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCD7104),
      titlebgColor: Color(0xffCD7104),
      mainbgColor: Colors.pinkAccent,
    ),
    WildAnimalPage(
      imageUrl: 'assets/images/wildAnimal/zebra.png',
      subtitle: 'Zebra',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2D0505),
      titlebgColor: Color(0xff2D0505),
      mainbgColor: Colors.pinkAccent,
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
    WildAnimalPage currentAnimal = animal[currentIndex];
    return UIHelperWildAnimal(
      title: 'Wild Animal',
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
