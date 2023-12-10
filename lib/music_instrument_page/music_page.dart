import 'package:e_school2/utilities/ui_helper_music.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class MusicPage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  MusicPage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  int currentIndex = 0;
  List<MusicPage> music = [
    MusicPage(
      imageUrl: 'assets/images/MInstrument/dhol.png',
      subtitle: 'Dholak',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8A4B41),
      titlebgColor: Color(0xff8A4B41),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/banjo.png',
      subtitle: 'Banjo',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff614E41),
      titlebgColor: Color(0xff614E41),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/harp.png',
      subtitle: 'Harp',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffAD513A),
      titlebgColor: Color(0xffAD513A),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/Piano1.png',
      subtitle: 'Piano',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff000000),
      titlebgColor: Color(0xff000000),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/tambourine.png',
      subtitle: 'kanjira',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffA64E2E),
      titlebgColor: Color(0xffA64E2E),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/drum.png',
      subtitle: 'Drum',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff333237),
      titlebgColor: Color(0xff333237),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/flute.png',
      subtitle: 'Flute',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff985D39),
      titlebgColor: Color(0xff985D39),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/guitar.png',
      subtitle: 'Guitar',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff835A3C),
      titlebgColor: Color(0xff835A3C),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/harmonium.png',
      subtitle: 'Harmonium ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8E564F),
      titlebgColor: Color(0xff8E564F),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/oboe.png',
      subtitle: 'Oboe',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff000000),
      titlebgColor: Color(0xff000000),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/saxophone.png',
      subtitle: 'Saxophone',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCA911E),
      titlebgColor: Color(0xffCA911E),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/sitar.png',
      subtitle: 'Sitar',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff65231A),
      titlebgColor: Color(0xff65231A),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/tabala.png',
      subtitle: 'Tabala',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff44372E),
      titlebgColor: Color(0xff44372E),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/trombone.png',
      subtitle: 'Trombone',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCB9262),
      titlebgColor: Color(0xffCB9262),
    ),
    MusicPage(
      imageUrl: 'assets/images/MInstrument/tuba.png',
      subtitle: 'Tuba',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCD9C23),
      titlebgColor: Color(0xffCD9C23),
    ),
  ];
  void onNextTap() {
    if (currentIndex < music.length - 1) {
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
    MusicPage currentAnimal = music[currentIndex];
    return UIHelperMusic(
      title: 'Music Instrument',
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
