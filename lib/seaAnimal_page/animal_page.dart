import 'package:e_school2/utilities/ui_helper_animal.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class AnimalPage extends StatefulWidget {
  // const AnimalPage({super.key});
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  final Color mainbgColor;
  AnimalPage(
      {required this.imageUrl,
      required this.subtitle,
      required this.backgroundColor,
      required this.btnBackgroundColor,
      required this.titlebgColor,
      required this.mainbgColor});
  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  int currentIndex = 0;
  List<AnimalPage> animal = [
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/clown fish.png',
      subtitle: 'Clown Fish',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF66905),
      titlebgColor: Color(0xffF66905),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/manatee.png',
      subtitle: 'Manatee',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff648FA7),
      titlebgColor: Color(0xff648FA7),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/seal.png',
      subtitle: 'Seal',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff785747),
      titlebgColor: Color(0xff785747),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/crab.png',
      subtitle: 'Crab',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffDB3B2D),
      titlebgColor: Color(0xffDB3B2D),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/dolphin.png',
      subtitle: 'Dolphin',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff17353C),
      titlebgColor: Color(0xff17353C),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/fish.png',
      subtitle: 'Fish',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2894C8),
      titlebgColor: Color(0xff2894C8),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/whale.png',
      subtitle: 'Whale',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF55C0C),
      titlebgColor: Color(0xffF55C0C),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/jelly.png',
      subtitle: 'Jelly Fish',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF8081),
      titlebgColor: Color(0xffFF8081),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/lobster.png',
      subtitle: 'Lobster',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEC4525),
      titlebgColor: Color(0xffEC4525),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/octopus.png',
      subtitle: 'Octopus',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF15A25),
      titlebgColor: Color(0xffF15A25),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/horse.png',
      subtitle: 'Seahorse',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffC88D0D),
      titlebgColor: Color(0xffC88D0D),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/star.png',
      subtitle: 'Star Fish',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF48C37),
      titlebgColor: Color(0xffF48C37),
      mainbgColor: Colors.greenAccent,
    ),
    AnimalPage(
      imageUrl: 'assets/images/seaanimal2/tortoise.png',
      subtitle: 'Turtle',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff699D00),
      titlebgColor: Color(0xff699D00),
      mainbgColor: Colors.greenAccent,
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
    AnimalPage currentAnimal = animal[currentIndex];
    return UIHelperAnimal(
      title: ' Sea Animal',
      // titleBgColor: titlebgColor[currentIndex],
      imgUrl: currentAnimal.imageUrl,
      subTitle: currentAnimal.subtitle,
      mainBgColor: currentAnimal.mainbgColor,
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
