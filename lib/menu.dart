import 'package:e_school2/poem_page.dart';
import 'package:e_school2/story_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'homepage.dart';

class MyMenuPage extends StatefulWidget {
  const MyMenuPage({super.key});

  @override
  State<MyMenuPage> createState() => _MyMenuPageState();
}

class _MyMenuPageState extends State<MyMenuPage> {
  int _selectedIndex = 0;
  var heart = false;
  PageController controller = PageController();
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    PoemPage(),
    StoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 12,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: StylishBottomBar(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          option: AnimatedBarOptions(
            // iconSize: 32,
            barAnimation: BarAnimation.fade,
            iconStyle: IconStyle.Default,
            // opacity: 0.3,
          ),
          items: [
            BottomBarItem(
              icon: Container(
                  child: Image.asset(
                    'assets/images/icons/grid_view-0.png',
                    height: 30,
                    width: 30,
                  )),
              // icon: const Icon(
              //   Icons.home_outlined,
              //   // color: appBottomIconColor,
              // ),
              selectedIcon: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40),
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/icons/grid_view-Home.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
              selectedColor: Colors.blue,
              unSelectedColor: Colors.blue,
              // backgroundColor: Colors.orange,
              title: const Text(
                'Home',
                style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 0),
              ),
            ),
            BottomBarItem(
              icon: Container(
                  child: Image.asset(
                    'assets/images/icons/music_note-poem.png',
                    height: 30,
                    width: 30,
                  )),
              selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/icons/music_note.png',
                      height: 30,
                      width: 30,
                    ),
                  )
              ),
              selectedColor: Colors.blue,
              unSelectedColor: Colors.blue,
              // backgroundColor: Colors.orange,
              title: const Text(
                'Poems',
                style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 0),
              ),
            ),
            BottomBarItem(
              icon: Container(
                  child: Image.asset(
                    'assets/images/icons/menu_book-stories.png',
                    height: 30,
                    width: 30,
                  )),
              selectedIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/icons/menu_book.png',
                      height: 30,
                      width: 30,
                    ),
                  )
              ),
              selectedColor: Colors.blue,
              unSelectedColor: Colors.blue,
              // backgroundColor: Colors.orange,
              title: const Text(
                'Videos',
                style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 0),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
