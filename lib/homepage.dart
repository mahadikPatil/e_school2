import 'package:e_school2/alphabet_page/alphabets_page.dart';
import 'package:e_school2/flower_page/flower_page.dart';
import 'package:e_school2/fruits_pages/fruit_page.dart';
import 'package:e_school2/gadgets_page/gadgets_page.dart';
import 'package:e_school2/music_instrument_page/music_page.dart';
import 'package:e_school2/petAnimal_page/pet_animal.dart';
import 'package:e_school2/seaAnimal_page/animal_page.dart';
import 'package:e_school2/shape_page/shape_page.dart';
import 'package:e_school2/vegetables_page/vegetable_page.dart';
import 'package:e_school2/vehicle_page/vehicle_page.dart';
import 'package:e_school2/wildAnimal_page/wildAnimal_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'birds_page/bird_page.dart';

import 'color_page/color_page.dart';

import 'number_page/number_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff34AFFF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Ink.image(
              image: AssetImage('assets/images/homepage/e-school.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'e-school',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Andika-BoldItalic'),
            ),
          ],
        ),
      ),
      body: _homepagewidget(),
    );
  }

  Widget _homepagewidget() {
    return Column(
      children: [
        Container(
          color: Color(0xff34AFFF),
          height: MediaQuery.of(context).size.height / 1.15,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // color: Color(0xff34AFFF),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start Learning From Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Andika-BoldItalic'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (_) => FruitPage(
                                          imageUrl: '',
                                          subtitle: '',
                                          // backgroundColor: Colors.white,
                                          btnBackgroundColor: Colors.white,
                                          titlebgColor: Colors.white,
                                          mainbgColor: Colors.white,
                                        )),
                              );
                            },
                            child: Container(
                              height: 180,
                              width: 145,
                              decoration: BoxDecoration(
                                color: Color(0xffFFC4B2),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/fruits.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 50,
                                          width: 145,
                                          child: Center(
                                            child: Text('Fruit',
                                                style: TextStyle(
                                                    color: Color(0xffA72815),
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'Andika-BoldItalic')),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.2),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(80.0),
                                              topRight: Radius.circular(80.0),
                                              bottomLeft:
                                                  Radius.circular(240.0),
                                              bottomRight:
                                                  Radius.circular(240.0),
                                            ),
                                          )))
                                ],
                              ),
                            ),
                          ),
                          // Container(
                          //   height: 180,
                          //   width: 145,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffFFC4B2),
                          //     borderRadius: BorderRadius.circular(40),
                          //     image: DecorationImage(
                          //       image: AssetImage('assets/images/HomePage/fruits.png'),
                          //       fit: BoxFit.fill,
                          //     ),
                          //   ),
                          //   child: Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         height: 40,
                          //         width: 145,
                          //         child: Center(
                          //           child: Text('Fruit',
                          //               style: TextStyle(color: Colors.white)),
                          //         ),
                          //         decoration: BoxDecoration(
                          //           color: Color(0xffFFFFFF).withOpacity(0.2),
                          //           borderRadius: BorderRadius.only(
                          //               topLeft: Radius.circular(40.0),
                          //               topRight: Radius.circular(40.0),
                          //               bottomLeft: Radius.circular(60.0)),
                          //         )),
                          //   ),
                          // ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffFDBC84),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(MaterialPageRoute(
                                              builder: (_) => WildAnimalPage(
                                                    imageUrl: '',
                                                    subtitle: '',
                                                    backgroundColor:
                                                        Colors.white,
                                                    btnBackgroundColor:
                                                        Colors.white,
                                                    titlebgColor: Colors.white,
                                                    mainbgColor: Colors.white,
                                                  )));
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/animal.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Wild Animal',
                                              style: TextStyle(
                                                  color: Color(0xff523C2E),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffA2DFED),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(
                                      MaterialPageRoute(
                                          builder: (_) => AnimalPage(
                                                imageUrl: '',
                                                subtitle: '',
                                                backgroundColor: Colors.white,
                                                btnBackgroundColor:
                                                    Colors.white,
                                                titlebgColor: Colors.white,
                                                mainbgColor: Colors.white,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 100,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/aquatic_animal.png'),
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Sea Animal',
                                              style: TextStyle(
                                                  color: Color(0xff016B82),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffF4AFB9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(
                                        MaterialPageRoute(
                                            builder: (_) => VegetablePage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )),
                                      );
                                    },
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/vegetables.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Vegetables',
                                              style: TextStyle(
                                                  color: Color(0xff550815),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffFFEBD3),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(
                                      MaterialPageRoute(
                                          builder: (_) => ShapePage(
                                                imageUrl: '',
                                                subtitle: '',
                                                backgroundColor: Colors.white,
                                                btnBackgroundColor:
                                                    Colors.white,
                                                titlebgColor: Colors.white,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/shapes.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Shapes',
                                              style: TextStyle(
                                                  color: Color(0xffA53B45),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffACF1BF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => NumberPage(
                                                imageUrl: '',
                                                subtitle: '',
                                                backgroundColor: Colors.white,
                                                btnBackgroundColor:
                                                    Colors.white,
                                                titlebgColor: Colors.white)));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/numbers.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Numbers',
                                              style: TextStyle(
                                                  color: Color(0xff078A2C),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffF8FFCF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => AlphabetPage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 60,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/Alphabets.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Alphabets',
                                              style: TextStyle(
                                                  color: Color(0xffB2D000),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffE4ECFF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(
                                      MaterialPageRoute(
                                          builder: (_) => BirdsPage(
                                                imageUrl: '',
                                                subtitle: '',
                                                backgroundColor: Colors.white,
                                                btnBackgroundColor:
                                                    Colors.white,
                                                titlebgColor: Colors.white,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 60,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/Birds.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Birds',
                                              style: TextStyle(
                                                  color: Color(0xff820597),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffD9F8FF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => VehiclePage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/Vehicles.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Vehicles',
                                              style: TextStyle(
                                                  color: Color(0xff1D7285),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffACF1E9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(MaterialPageRoute(
                                              builder: (_) => PetAnimal(
                                                    imageUrl: '',
                                                    subtitle: '',
                                                    backgroundColor:
                                                        Colors.white,
                                                    btnBackgroundColor:
                                                        Colors.white,
                                                    titlebgColor: Colors.white,
                                                  )));
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/PetAnimalLogo.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text(' Animal',
                                              style: TextStyle(
                                                  color: Color(0xff007A6C),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffACF1D8),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => ColorPage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/colorHomeimg.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Colors',
                                              style: TextStyle(
                                                  color: Color(0xff078A53),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffFFD0E3),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(
                                        MaterialPageRoute(
                                            builder: (_) => FlowerPage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )),
                                      );
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/Flowers.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Flowers',
                                              style: TextStyle(
                                                  color: Color(0xffE11A6B),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffFFEBD3),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => MusicPage(
                                                  imageUrl: '',
                                                  titlebgColor: Colors.white,
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                )));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/MusInstruments.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Container(
                                          child: Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceAround,
                                            children: [
                                              // SizedBox(
                                              //   height: 8,
                                              // ),
                                              // Center(
                                              //   child: Text('Music\nInstrument',
                                              //       style: TextStyle(
                                              //           color: Color(0xffFFA73C),
                                              //           fontSize: 16,
                                              //           height: 0.8,
                                              //           fontFamily:
                                              //               'Andika-BoldItalic')),
                                              // ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Center(
                                                child: Text('Music',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFFA73C),
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'Andika-BoldItalic')),
                                              ),
                                              Center(
                                                child: Text('Instrument',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFFA73C),
                                                        fontSize: 16,
                                                        height: 0.8,
                                                        fontFamily:
                                                            'Andika-BoldItalic')),
                                              ),
                                            ],
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 145,
                            decoration: BoxDecoration(
                              color: Color(0xffDFECFF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => GadgetsPage(
                                                  imageUrl: '',
                                                  subtitle: '',
                                                  backgroundColor: Colors.white,
                                                  btnBackgroundColor:
                                                      Colors.white,
                                                  titlebgColor: Colors.white,
                                                )));
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Container(
                                      height: 60,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/homepage/Gadgets.png'),
                                        // fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 50,
                                        width: 145,
                                        child: Center(
                                          child: Text('Gadgets',
                                              style: TextStyle(
                                                  color: Color(0xff2B6ED2),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Andika-BoldItalic')),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(80.0),
                                            topRight: Radius.circular(80.0),
                                            bottomLeft: Radius.circular(240.0),
                                            bottomRight: Radius.circular(240.0),
                                          ),
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       height: 180,
                      //       width: 145,
                      //       decoration: BoxDecoration(
                      //         color: Color(0xffDFECFF),
                      //         borderRadius: BorderRadius.circular(40),
                      //       ),
                      //       child: Column(
                      //         children: [
                      //           GestureDetector(
                      //             onTap: () {
                      //               Navigator.of(context, rootNavigator: true)
                      //                   .push(MaterialPageRoute(
                      //                       builder: (_) => PetAnimal(
                      //                             imageUrl: '',
                      //                             subtitle: '',
                      //                             backgroundColor: Colors.white,
                      //                             btnBackgroundColor:
                      //                                 Colors.white,
                      //                             titlebgColor: Colors.white,
                      //                           )));
                      //             },
                      //             child: Container(
                      //               height: 130,
                      //               child: Container(
                      //                 height: 60,
                      //                 width: 100,
                      //                 decoration: BoxDecoration(
                      //                     image: DecorationImage(
                      //                   image: AssetImage(
                      //                       'assets/images/homepage/Gadgets.png'),
                      //                   // fit: BoxFit.fill,
                      //                 )),
                      //               ),
                      //             ),
                      //           ),
                      //           Align(
                      //               alignment: Alignment.bottomCenter,
                      //               child: Container(
                      //                   height: 50,
                      //                   width: 145,
                      //                   child: Center(
                      //                     child: Text('Pet Animal',
                      //                         style: TextStyle(
                      //                             color: Color(0xff2B6ED2),
                      //                             fontSize: 16,
                      //                             fontFamily:
                      //                                 'Andika-BoldItalic')),
                      //                   ),
                      //                   decoration: BoxDecoration(
                      //                     color: Color(0xffFFFFFF)
                      //                         .withOpacity(0.2),
                      //                     borderRadius: BorderRadius.only(
                      //                       topLeft: Radius.circular(80.0),
                      //                       topRight: Radius.circular(80.0),
                      //                       bottomLeft: Radius.circular(240.0),
                      //                       bottomRight: Radius.circular(240.0),
                      //                     ),
                      //                   )))
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
