import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sih2022/cctvs.dart';
import 'package:sih2022/payload_screen.dart';
import 'package:sih2022/video_players_sih.dart';
import 'notifications_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    listenNotifications();
    Timer(const Duration(milliseconds: 1700), () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(
                cctv: "Live Footage CCTV 1(PLace or Street)",
                crime:
                    "Fighting detected at New York in CCTV 1. People are fighting at steet.",
                acc: "There is 87% accuracy of having the fight.",
                video: 'assets/video1.mp4',
                flag: false,
              )));
    });
  }

  void listenNotifications() =>
      onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String? payload) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PayloadScreen()));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            const SizedBox(
              height: 350,
            ),
            Container(
              height: 2,
              width: 120,
              color: Colors.black,
            ),
            Container(
              height: 2,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 2,
              width: 120,
              color: Colors.black,
            ),
            const Text("INVISIBLE",
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-2.0, -2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            const Text("MINDS",
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(-2.0, -2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              height: 2,
              width: 120,
              color: Colors.black,
            ),
            Container(
              height: 2,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 2,
              width: 120,
              color: Colors.black,
            ),
            const SizedBox(
              height: 180,
              width: 200,
              child: Image(image: AssetImage('assets/launcher.png')),
            ),
          ])),
      bottomNavigationBar: Container(
        height: 18,
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      ),
    );
  }
}

class Home extends StatefulWidget {
  final String cctv;
  final String crime;
  final String acc;
  final String video;
  final bool flag;
  const Home({
    Key? key,
    required this.cctv,
    required this.crime,
    required this.acc,
    required this.video,
    required this.flag
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    List vidList = [
      'assets/video1.mp4',
      'assets/Fighting002_x264.mp4',
      'assets/Fighting005_x264.mp4',
      'assets/Fighting007_x264.mp4',
      'assets/Fighting020_x264.mp4',
      'assets/Fighting027_x264.mp4',
      'assets/Fighting038_x264.mp4',
      'assets/Fighting044_x264.mp4'
    ];

    int index = vidList.indexOf(widget.video.toString()) + 2;
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
      body: Container(
        height: myHeight,
        width: myWidth,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.cctv,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: myHeight / 3.5,
                width: myWidth / 1.1,
                child: VideoPlayerScreen(
                  url: widget.video,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: myHeight / 22,
                  width: myWidth / 2.37,
                  child: Center(
                    child: Text(
                        widget.cctv.substring(13, 18) + (index % 8).toString(),
                        style: const TextStyle(fontSize: 15)),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: myHeight / 22,
                  width: myWidth / 2.37,
                  child: Center(
                    child: Text(
                        widget.cctv.substring(13, 18) +
                            ((index + 1) % 8).toString(),
                        style: const TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: myHeight / 7,
                    width: myWidth / 2.37,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                    ),
                    child: VideoPlayerScreen(
                      url: vidList[(index - 1) % 8],
                    )),
                const SizedBox(
                  width: 30,
                ),
                Container(
                    height: myHeight / 7,
                    width: myWidth / 2.37,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                    ),
                    child: VideoPlayerScreen(
                      url: vidList[index % 8],
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: myHeight / 9,
              width: myWidth / 1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.blue),
              ),
              child: Text(
                widget.crime,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: myHeight / 9,
              width: myWidth / 1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.blue),
              ),
              child: Text(
                widget.acc,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
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
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              onTap: () {
                sendNotification(
                    title: "Alert at CCTV 1",
                    body: "This is a test notification from Invisible Minds");
              },
            ),
            GestureDetector(
              child: Column(
                children: const [
                  Icon(
                    Icons.videocam,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "CCTVs",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              onTap: () {
                widget.flag ? Navigator.pop(context) :
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CctvControl()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
