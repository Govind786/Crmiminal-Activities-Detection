import 'package:flutter/material.dart';
import 'package:sih2022/main.dart';
import 'package:sih2022/payload_screen.dart';
import 'package:sih2022/video_players_sih.dart';

class CctvControl extends StatefulWidget {
  const CctvControl({Key? key}) : super(key: key);

  @override
  State<CctvControl> createState() => _CctvControlState();
}

class _CctvControlState extends State<CctvControl> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "INVISIBLE MINDS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35.0,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PayloadScreen()));
                      },
                    ),
                    1 == 0
                        ? Container()
                        : Positioned(
                            top: 0,
                            right: 0,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 17.0,
                                  width: 20.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 1(PLace or Street)",
                        crime:
                            "Fighting detected at New York in CCTV 1. People are fighting at steet.",
                        acc: "There is 87% accuracy of having the fight.",
                        video: 'assets/video1.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/video1.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 2(PLace or Street)",
                        crime:
                            "Violence detected at Bhopal in CCTV 2. Some people are making violence.",
                        acc: "There is 71% accuracy of having the violence.",
                        video: 'assets/Fighting002_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting002_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 3(PLace or Street)",
                        crime:
                            "Thieves detected at Shop in CCTV 3. Two person with covered mouse are suspected.",
                        acc: "There is 66% accuracy of having the fight.",
                        video: 'assets/Fighting005_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting005_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 4(PLace or Street)",
                        crime:
                            "Mob Formation detected at Railway Station CCTV 4. People are fighting at steet.",
                        acc: "There is 60% accuracy of having the fight.",
                        video: 'assets/Fighting007_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting007_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 5(PLace or Street)",
                        crime:
                            "Fighting detected at Mall in CCTV 5. People are fighting.",
                        acc: "There is 48% accuracy of having the fight.",
                        video: 'assets/Fighting020_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting020_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 6(PLace or Street)",
                        crime:
                            "Mob formation detected at Street of Bairagarh in CCTV 6. People are found anomoly.",
                        acc: "There is 34% accuracy of having the fight.",
                        video: 'assets/Fighting027_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting027_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 7(PLace or Street)",
                        crime:
                            "Fighting detected at Railway Station in CCTV 7. Two People are fighting in hospital.",
                        acc: "There is 49% accuracy of having the fight.",
                        video: 'assets/Fighting038_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting038_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 8(PLace or Street)",
                        crime:
                            "Mob Formation detected at Shop in CCTV 8. People are gathered at street.",
                        acc: "There is 91% accuracy of having the fight.",
                        video: 'assets/Fighting044_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Fighting044_x264.mp4',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(
                        cctv: "Live Footage CCTV 9(PLace or Street)",
                        crime:
                            "Fighting detected at Bus Stop in CCTV 9. People are fighting at bus stop.",
                        acc: "There is 76% accuracy of having the fight.",
                        video: 'assets/Assault018_x264.mp4',
                        flag: true,
                      )));
            },
            child: const VideoPlayerScreen(
              url: 'assets/Assault018_x264.mp4',
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: myHeight / 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Column(
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Home(
                          cctv: "Live Footage CCTV 1(PLace or Street)",
                          crime:
                              "Fighting detected at New York in CCTV 1. People are fighting at steet.",
                          acc: "There is 87% accuracy of having the fight.",
                          video: 'assets/video1.mp4',
                          flag: true,
                        )));
              },
            ),
            GestureDetector(
              child: Column(
                children: const [
                  Icon(
                    Icons.videocam,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "CCTVs",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
