import 'package:flutter/material.dart';

import '../homepage.dart';
import '../utilities/ui_helper_shape.dart';

class ShapePage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  ShapePage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });

  @override
  State<ShapePage> createState() => _ShapePageState();
}

class _ShapePageState extends State<ShapePage> {
  int currentIndex = 0;
  List<ShapePage> shapes = [
    ShapePage(
      imageUrl: 'assets/images/shapes/cross.png',
      subtitle: 'Cross',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF36F21),
      titlebgColor: Color(0xffF36F21),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Cube.png',
      subtitle: 'Cube',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffB15D30),
      titlebgColor: Color(0xffB15D30),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/cylinder.png',
      subtitle: 'Cylinder',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff009788),
      titlebgColor: Color(0xff009788),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/arrow.png',
      subtitle: 'Arrow',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF44336),
      titlebgColor: Color(0xffF44336),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Heptagon.png',
      subtitle: 'Heptagon',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffA343EE),
      titlebgColor: Color(0xffA343EE),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/oval-cone.png',
      subtitle: 'Cone',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff2196F3),
      titlebgColor: Color(0xff2196F3),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/polygoan.png',
      subtitle: 'Kite',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF0B27),
      titlebgColor: Color(0xffFF0B27),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Ellipse 23-1.png',
      subtitle: 'Crescent',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff5BC1D8),
      titlebgColor: Color(0xff5BC1D8),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Ellipse 23.png',
      subtitle: 'Circle',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFF3939),
      titlebgColor: Color(0xffFF3939),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Group 142.png',
      subtitle: 'Diamond',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0071B1),
      titlebgColor: Color(0xff0071B1),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Polygon 1.png',
      subtitle: 'Triangle',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff79B100),
      titlebgColor: Color(0xff79B100),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Rectangle 31.png',
      subtitle: 'Square',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffEBB700),
      titlebgColor: Color(0xffEBB700),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Rectangle 31-3.png',
      subtitle: 'Trapezoid',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff696969),
      titlebgColor: Color(0xff696969),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Rectangle 31-2.png',
      subtitle: 'Oval',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff0087B1),
      titlebgColor: Color(0xff0087B1),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Star 7-2.png',
      subtitle: 'Hexagoan',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD8885B),
      titlebgColor: Color(0xffD8885B),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Star 7.png',
      subtitle: 'Star',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff5B76D8),
      titlebgColor: Color(0xff5B76D8),
    ),
    ShapePage(
      imageUrl: 'assets/images/shapes/Star 7-1.png',
      subtitle: 'Pentagon',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD8AD5B),
      titlebgColor: Color(0xffD8AD5B),
    ),
  ];
  void onNextTap() {
    if (currentIndex < shapes.length - 1) {
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
    ShapePage currentAnimal = shapes[currentIndex];
    return UIHelperShapes(
      title: 'Shapes',
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
