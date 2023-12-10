import 'package:e_school2/story_page.dart';
import 'package:e_school2/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PoemPage extends StatefulWidget {
  const PoemPage({super.key});

  @override
  State<PoemPage> createState() => _PoemPageState();
}

class _PoemPageState extends State<PoemPage> {
  final List<String> videoImage = [
    'assets/images/poem/cocomelon.png',
    'assets/images/poem/chidiyarani.png',
    'assets/images/poem/chandamama.png',
    'assets/images/poem/rain.png',
    'assets/images/poem/nani.png',
    'assets/images/poem/animal.png',
    'assets/images/poem/mama.png',
    'assets/images/poem/abc.png',
    'assets/images/poem/monkey.png',
    'assets/images/poem/number.png',
  ];
  final List<String> videoUrl = [
    'e_04ZrNroTo?si=wLvKZ-8UcburLT9j',
    's_HGPAkcMVU?si=vFRC7G93hEdG2iP7',
    'jFYiT3_65kE?si=K4gj78fTbdOtMioE',
    'Zu6o23Pu0Do?si=HvDpFvF5Zh7chXqw',
    '20B7OHDP70w?si=FfPr-QLg49KNcDGt',
    '3gt_G1BjTD4?si=Mbkze8-wCSDxnUMR',
    'wygHI6Wwxl4?si=kZejuGXjHik9al5K',
    'om_1599v70c?si=NPSYxsTrJf4P8Jv_',
    'b0NHrFNZWh0?si=n6slm2gwu7_7ksw9',
    'a9PpVo6b7z0?si=CLtGxWIBO-l-tsIC',
  ];
  final List<String> videoTitles = [
    'Bounce along in the bus all over town with this favorite nursery rhyme!',
    'Chidiya Rani Badi Sayani + Popular Nursery Rhymes and Poem in Hindi',
    'Chanda Mama Door Ke || Hindi Rhymes And Kids Songs',
    'Rain, Rain, Go Away Nursery Rhyme With Lyrics - Cartoon Animation Rhymes & Songs for Children',
    'Nani Teri Morni ko mor le gaye | Hindi Balgeet & Hindi Rhymes ',
    'Animal Dance Song | CoComelon Nursery Rhymes & Kids Songs',
    'Mamachya Gavala Jauya | Zuk zuk Aagingadi Top Marathi Balgeet',
    'ABC Song with Balloons and Animals | CoComelon Nursery Rhymes & Animal Songs',
    'Five Little Monkeys Jumping On The Bed | Children Nursery Rhyme',
    'Numbers Song with Little Chicks + More Nursery Rhymes & Kids Songs - CoComelon',
  ];

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
      body: _PoemPage(),
    );
  }

  Widget _PoemPage() {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xffF1F1F1),
            height: MediaQuery.of(context).size.height / 1.15,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: ListView.builder(
                    itemCount: videoUrl.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                              margin:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                              child: YouTubeVideoItem(
                                videoUrl: videoUrl[index],
                                videoTitles: videoTitles[index],
                                videoImage: videoImage[index],
                              )),
                          if (index ==
                              videoUrl.length -
                                  1) // Check if it's the last index
                            SizedBox(height: 50),
                        ],
                      );
                    })),
          ),
        ],
      ),
    );
  }
}

class YouTubeVideoItem extends StatelessWidget {
  final String videoUrl;
  final String videoTitles;
  final String videoImage;
  YouTubeVideoItem(
      {required this.videoUrl,
        required this.videoTitles,
        required this.videoImage});

  @override
  Widget build(BuildContext context) {
    // YoutubePlayerController controller = YoutubePlayerController(
    //   initialVideoId: videoUrl,
    //   flags: YoutubePlayerFlags(
    //     autoPlay: false,
    //     mute: false,
    //   ),
    // );
    return Container(
      // height: 250,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 10.0),
            height: 190,
            width: 500,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoScreen(
                          videoUrl: videoUrl,
                        )));
              },
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        videoImage,
                        width: MediaQuery.of(context).size.width / 1,
                        fit: BoxFit.fill,
                      ),
                      // child: YoutubePlayer(
                      //   controller: controller,
                      //   showVideoProgressIndicator: true,
                      // ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(0.6)),
                      child: Icon(
                        Icons.play_arrow_sharp,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 14.0, top: 16, bottom: 16, right: 14),
              child: Text(
                videoTitles,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}