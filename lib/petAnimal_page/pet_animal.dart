import 'package:e_school2/utilities/ui_helper_petAnimal.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class PetAnimal extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  PetAnimal({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });
  @override
  State<PetAnimal> createState() => _PetAnimalState();
}

class _PetAnimalState extends State<PetAnimal> {
  int currentIndex = 0;
  List<PetAnimal> pet_animal = [
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/cat.png',
      subtitle: 'Cat',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffCC6601),
      titlebgColor: Color(0xffCC6601),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/cow.png',
      subtitle: 'Cow',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff1F1F1F),
      titlebgColor: Color(0xff1F1F1F),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/hamster.png',
      subtitle: 'Hamster',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff563C2F),
      titlebgColor: Color(0xff563C2F),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/hedgehog.png',
      subtitle: 'Hedgehog ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff5D392B),
      titlebgColor: Color(0xff5D392B),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/pig.png',
      subtitle: 'Pig',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE43840),
      titlebgColor: Color(0xffE43840),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/puppy.png',
      subtitle: 'Dog',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffC5813B),
      titlebgColor: Color(0xffC5813B),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/rabbit.png',
      subtitle: 'Rabbit',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffFA8798),
      titlebgColor: Color(0xffFA8798),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/rat.png',
      subtitle: 'Rat',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff181818),
      titlebgColor: Color(0xff181818),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/sheep.png',
      subtitle: 'Sheep',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff805A3F),
      titlebgColor: Color(0xff805A3F),
    ),
    PetAnimal(
      imageUrl: 'assets/images/petAnimal/squirrel.png',
      subtitle: 'Squirrel',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff9A4C00),
      titlebgColor: Color(0xff9A4C00),
    ),
  ];
  void onNextTap() {
    if (currentIndex < pet_animal.length - 1) {
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
    PetAnimal currentAnimal = pet_animal[currentIndex];
    return UIHelperPetAnimal(
      title: 'Animals',
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
