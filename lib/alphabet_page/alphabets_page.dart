import 'package:e_school2/utilities/ui_helper_alphabet.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class AlphabetPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;

  AlphabetPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  int currentIndex = 0;
  List<AlphabetPage> alphabets = [
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture1.png',
      subtitle: 'A',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture2.png',
      subtitle: 'B',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture3.png',
      subtitle: 'C',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture4.png',
      subtitle: 'D',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture5.png',
      subtitle: 'E',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture6.png',
      subtitle: 'F',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture7.png',
      subtitle: 'G',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture8.png',
      subtitle: 'H',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture9.png',
      subtitle: 'I',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture10.png',
      subtitle: 'J',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture11.png',
      subtitle: 'K',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture12.png',
      subtitle: 'L',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture13.png',
      subtitle: 'M',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture14.png',
      subtitle: 'N',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture15.png',
      subtitle: 'O',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture16.png',
      subtitle: 'P',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture17.png',
      subtitle: 'Q',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture18.png',
      subtitle: 'R',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture19.png',
      subtitle: 'S',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture20.png',
      subtitle: 'T',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture21.png',
      subtitle: 'U',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture22.png',
      subtitle: 'V',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture23.png',
      subtitle: 'W',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture24.png',
      subtitle: 'X',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture25.png',
      subtitle: 'Y',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
    AlphabetPage(
      imageUrl: 'assets/images/alphabets/Picture26.png',
      subtitle: 'Z',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff34AFFF),
      titlebgColor: Color(0xff34AFFF),
    ),
  ];
  void onNextTap() {
    if (currentIndex < alphabets.length - 1) {
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
    AlphabetPage currentAnimal = alphabets[currentIndex];
    return UIHelperAlphabet(
      title: 'Alphabets',
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
      subTitleSize: 0,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
      starbgColor: currentAnimal.titlebgColor.withOpacity(0.1),
    );
  }
}
