import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class UIHelperVegetables extends StatefulWidget {
  final String title;
  final Color titleColor;
  final Color titleBgColor;
  final String imgUrl;
  final String subTitle;
  final Color mainBgColor;
  final Color subTitleBgColor;
  final double titleSize;
  final double subTitleSize;
  final String fontFamily;
  final Color btnBgColor;
  final Color btnElvationColor;
  final Color starbgColor;
  final VoidCallback? onPreviousTap;
  final VoidCallback? onNextTap;

  UIHelperVegetables({
    required this.title,
    required this.titleColor,
    required this.titleBgColor,
    required this.imgUrl,
    required this.subTitle,
    required this.subTitleSize,
    required this.mainBgColor,
    required this.subTitleBgColor,
    required this.titleSize,
    required this.fontFamily,
    required this.btnBgColor,
    required this.btnElvationColor,
    required this.starbgColor,
    this.onPreviousTap,
    this.onNextTap,
  });

  @override
  State<UIHelperVegetables> createState() => _UIHelperVegetablesState();
}

class _UIHelperVegetablesState extends State<UIHelperVegetables> {
  FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    flutterTts.setLanguage("en-IN"); // Set your preferred language
  }

  Future<void> speakSubtitle() async {
    if (!isPlaying) {
      await flutterTts.speak(widget.subTitle);
      setState(() {
        isPlaying = true;
      });
    } else {
      flutterTts.stop();
      setState(() {
        isPlaying = false;
      });
    }
  }

  @override
  void dispose() {
    flutterTts.stop();
    // flutterTts.shutdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.mainBgColor,
        child: Stack(
          children: [
            Positioned(
              top: 140,
              right: -40,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 150,
                    color: widget.starbgColor,
                  )
                ],
              ),
            ),
            Positioned(
                top: 350,
                left: -60,
                child: Icon(
                  Icons.star,
                  size: 150,
                  color: widget.starbgColor,
                )),
            Positioned(
                top: 40,
                left: -60,
                child: Icon(
                  Icons.star,
                  size: 150,
                  color: widget.starbgColor,
                )),
            Column(
              children: [
                Container(
                  // height: 180,
                  height: MediaQuery.of(context).size.height / 4.8,
                  width: 800,
                  child: Center(
                      child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: widget.titleSize,
                      color: widget.titleColor,
                      fontFamily: widget.fontFamily,
                    ),
                  )),
                  // margin: EdgeInsets.all(0.4),
                  decoration: BoxDecoration(
                      color: widget.titleBgColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                          bottomRight: Radius.circular(150))),
                ),
                SizedBox(
                  // height: 39,
                  height: MediaQuery.of(context).size.height / 22,
                ),
                Container(
                  height: 275,
                  child: Image.asset(
                    widget.imgUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.subTitle,
                      style: TextStyle(
                        fontSize: widget.subTitleSize,
                        color: widget.subTitleBgColor,
                        fontFamily: widget.fontFamily,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                              color: widget.titleBgColor.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Previous button tab');
                            return widget.onPreviousTap!();
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.btnBgColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3.0,
                                    offset: Offset(1, 1),
                                  ),
                                ]),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Play Audio');
                        speakSubtitle();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.btnBgColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 3.0,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              isPlaying ? Icons.stop : Icons.volume_mute,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                              color: widget.titleBgColor.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Next Button Tab');
                            setState(() {
                              isPlaying = false;
                            });
                            return widget.onNextTap!();
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.btnBgColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3.0,
                                    offset: Offset(1, 1),
                                  ),
                                ]),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
