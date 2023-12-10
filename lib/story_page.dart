import 'package:e_school2/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<String> videoImage = [
    'assets/images/youTube/chrShivajiMaharaj.jpeg',
    'assets/images/youTube/antSparrow.jpeg',
    'assets/images/youTube/Lakudtoda.jpg',
    'assets/images/youTube/thirstyCrow.jpeg',
    'assets/images/youTube/chandrayan.jpg',
    'assets/images/youTube/crualCrocodile.jpg',
    'assets/images/youTube/tenaliRaman.jpg',
    'assets/images/youTube/antSparrow.jpeg',
    'assets/images/youTube/trueFriends.jpeg',
    'assets/images/youTube/RabbitTurtle.jpeg',
  ];
  final List<String> videoUrl = [
    '8xu60ZqdLbY',
    'ff7HcT-gAMk?si=gVwDX8zU6_9CyVgB',
    'gVOFpON2oGA?si=RgRW8OuQWZNgQpyk',
    'uwzViw-T0-A?si=cWBqg34e9NQ0AZpC',
    '29L1WyqjoYg?si=C-yv_loSI3EAzwFG',
    '0M2_uLhm3oQ?si=Qv4idL91XaWZ7ZHB',
    'WEA0RMjkm0s?si=e6b9QW54M0UWcKpR',
    'f_2b8JyoYXA?si=CxzuPKMHGgx1Fgvh',
    '2_t38oktRig?si=9E4bjkCR8PMLepwU',
    'UayIEps9Y70?si=1LSvR-P6yWAqG9ds',
  ];
  final List<String> videoTitles = [
    'Shivaji Maharaj & Savlya Tandel - Moral Story In Hindi | Shivaji Maharaj Story',
    'Bhola Ullu Kahani l Hindi Story for Kids',
    'Lakudtodyachi Goshta - Marathi Goshti | Marathi Story | Chan Chan Goshti',
    'Thirsty Crow Story in English | Moral stories for Kids',
    'Story of Mission Chandrayaan-3 | India Creates History ',
    'Cruel Crocodile Story l Kids Moral Stories',
    'Tenali Raman , Funny Stories |Inspirational & Motivational Stories',
    'Ant and Sparrow l Cartoon Story l Hindi Moral Stories l Kids Stories',
    'True Friends l Moral Story for Children',
    'Kachua aur Khargosh | Rabbit and Tortoise',
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
      body: _StoryPage(),
    );
  }

  Widget _StoryPage() {
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
