import 'package:e_school2/utilities/ui_helper_vehicle.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class VehiclePage extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final Color backgroundColor;
  final Color btnBackgroundColor;
  final Color titlebgColor;
  VehiclePage({
    required this.imageUrl,
    required this.subtitle,
    required this.backgroundColor,
    required this.btnBackgroundColor,
    required this.titlebgColor,
  });
  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  int currentIndex = 0;
  List<VehiclePage> vehicle = [
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/bulldozer.png',
      subtitle: 'Bulldozer',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffE4B819),
      titlebgColor: Color(0xffE4B819),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/scooter.png',
      subtitle: 'Scooter',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD25F28),
      titlebgColor: Color(0xffD25F28),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/red-tractor.png',
      subtitle: 'Tractor',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffAC0701),
      titlebgColor: Color(0xffAC0701),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/car.png',
      subtitle: 'Car',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF89841),
      titlebgColor: Color(0xffF89841),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/amulance.png',
      subtitle: 'Ambulance',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffED1D24),
      titlebgColor: Color(0xffED1D24),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/bycicale.png',
      subtitle: 'Bicycle',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffF36523),
      titlebgColor: Color(0xffF36523),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/boat.png',
      subtitle: 'Boat ',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff69A1BA),
      titlebgColor: Color(0xff69A1BA),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/helicopter.png',
      subtitle: 'Helicopter',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffD57D03),
      titlebgColor: Color(0xffD57D03),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/plane.png',
      subtitle: 'Plane',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff18708E),
      titlebgColor: Color(0xff18708E),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/policecar.png',
      subtitle: 'police Car',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff006AAE),
      titlebgColor: Color(0xff006AAE),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/auto.png',
      subtitle: 'Rickshaw',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xffA3A016),
      titlebgColor: Color(0xffA3A016),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/train.png',
      subtitle: 'Train',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff5B69B0),
      titlebgColor: Color(0xff5B69B0),
    ),
    VehiclePage(
      imageUrl: 'assets/images/vehicle2/firetruck.png',
      subtitle: 'Truck',
      backgroundColor: Colors.white,
      btnBackgroundColor: Color(0xff9D0001),
      titlebgColor: Color(0xff9D0001),
    ),
  ];
  void onNextTap() {
    if (currentIndex < vehicle.length - 1) {
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
    VehiclePage currentAnimal = vehicle[currentIndex];
    return UIHelperVehicle(
      title: 'Vehicles',
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
