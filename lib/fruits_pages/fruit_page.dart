import 'package:e_school2/homepage.dart';
import 'package:e_school2/utilities/ui_helper.dart';
import 'package:flutter/material.dart';

class FruitPage extends StatefulWidget {
  // const FruitPage({super.key});
  final String imageUrl;
  final String subtitle;
  // final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  final Color mainbgColor;
  FruitPage(
      {required this.imageUrl,
      required this.subtitle,
      // required this.backgroundColor,
      required this.btnBackgroundColor,
      required this.titlebgColor,
      required this.mainbgColor});

  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  int currentIndex = 0;
  List<FruitPage> fruits = [
    FruitPage(
      imageUrl: 'assets/images/fruits/Cherry.png',
      subtitle: 'Cherry',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff8D0105),
      titlebgColor: Color(0xff8D0105),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/CustardApple.png',
      subtitle: 'Custard Apple',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff42540A),
      titlebgColor: Color(0xff42540A),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Jackfruit.png',
      subtitle: 'Jackfruit',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff62781F),
      titlebgColor: Color(0xff62781F),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/PineApple.png',
      subtitle: 'PineApple',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff1D2436),
      titlebgColor: Color(0xff1D2436),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Raspberry.png',
      subtitle: 'Raspberry',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD62938),
      titlebgColor: Color(0xffD62938),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Sapodilla.png',
      subtitle: 'Pear',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff966338),
      titlebgColor: Color(0xff966338),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Orange.png',
      subtitle: 'Orange',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE65F01),
      titlebgColor: Color(0xffE65F01),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/pomgranate.png',
      subtitle: 'Pomogranate',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Colors.red.shade900,
      titlebgColor: Colors.red.shade900,
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/apple.png',
      subtitle: 'Apple',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffA53B45),
      titlebgColor: Color(0xffA53B45),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/banana.png',
      subtitle: 'Banana',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF6B40A),
      titlebgColor: Color(0xffF6B40A),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/strawberry.png',
      subtitle: 'Strawberry',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2F0104),
      titlebgColor: Color(0xff2F0104),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Grapes.png',
      subtitle: 'Grapes',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff9D8A35),
      titlebgColor: Color(0xff9D8A35),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Kivi.png',
      subtitle: 'Kiwi',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffADB042),
      titlebgColor: Color(0xffADB042),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Mango.png',
      subtitle: 'Mango',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD29D0C),
      titlebgColor: Color(0xffD29D0C),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Watermelon.png',
      subtitle: 'Watermelon',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff436938),
      titlebgColor: Color(0xff436938),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Peach.png',
      subtitle: 'Peach',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD7625C),
      titlebgColor: Color(0xffD7625C),
      mainbgColor: Color(0xffFFFFFF),
    ),
    FruitPage(
      imageUrl: 'assets/images/fruits/Blueberries.png',
      subtitle: 'Blackberry',
      // backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff1D2436),
      titlebgColor: Color(0xff1D2436),
      mainbgColor: Color(0xffFFFFFF),
    ),
  ];
  // List<String> imageUrls = [
  //   'assets/images/fruits/pomgranate.png',
  //   'assets/images/fruits/apple.png',
  //   'assets/images/fruits/banana.png',
  //   'assets/images/fruits/strawberry.png',
  // ];
  // title='Fruit' as List<String>;
  // List<String> title = ['Fruit'];
  // List<String> subtitles = [
  //   'Pomogranate',
  //   'Apple',
  //   'Banana',
  //   'Strawberry',
  // ];
  // List<Color> backgroundColors = [
  //   Colors.white,
  //   Colors.white,
  //   Colors.white,
  //   Colors.white,
  // ];
  // List<Color> btnBackgroundColor = [
  //   Colors.red.shade900,
  //   Color(0xffA53B45),
  //   Color(0xffF6B40A),
  //   Color(0xff2F0104)
  // ];
  // List<Color> titlebgColor = [
  //   Colors.red.shade900,
  //   Color(0xffA53B45),
  //   Color(0xffF6B40A),
  //   Color(0xff2F0104),
  // ];

  void onNextTap() {
    if (currentIndex < fruits.length - 1) {
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
    FruitPage currentFruit = fruits[currentIndex];
    return UIHelper(
      title: 'Fruit',
      // titleBgColor: titlebgColor[currentIndex],
      imgUrl: currentFruit.imageUrl,
      subTitle: currentFruit.subtitle,
      mainBgColor: currentFruit.mainbgColor,
      btnBgColor: currentFruit.btnBackgroundColor,
      titleBgColor: currentFruit.titlebgColor,
      // imgUrl: imageUrls[currentIndex],
      // subTitle: subtitles[currentIndex],
      // mainBgColor: backgroundColors[currentIndex],
      // btnBgColor: btnBackgroundColor[currentIndex],
      subTitleBgColor: currentFruit.btnBackgroundColor,
      btnElvationColor: Colors.red,
      onPreviousTap: onPreviousTap,
      onNextTap: onNextTap,
      titleSize: 30,
      subTitleSize: 36,
      fontFamily: 'Andika-BoldItalic',
      titleColor: Colors.white,
      starbgColor: currentFruit.titlebgColor.withOpacity(0.1),
    );
  }
}
