import 'package:flutter/material.dart';
import 'package:sih2022/cctvs.dart';
import 'package:sih2022/main.dart';

class PayloadScreen extends StatefulWidget {
  const PayloadScreen({Key? key}) : super(key: key);

  @override
  State<PayloadScreen> createState() => _PayloadScreenState();
}

class _PayloadScreenState extends State<PayloadScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    List noti = [
      "Mob formation",
      "Melee/Weapon",
      "Shooting",
      "Fighting",
      "Stealing",
      "Chain Snathcing",
      "Shutter Pulling",
      "Abusing",
    ];
    List location = [
      "CCTV 1 : Bhopal",
      "CCTV 2 : Indore",
      "CCTV 3 : Annupur ",
      "CCTV 4 : Balaghat",
      "CCTV 5: Satna",
      "CCTV 6: Satna",
      "CCTV 7: Satna",
      "CCTV 8: Satna",
    ];
    List accuracy = [
      '85%',
      '88%',
      '84%',
      '94%',
      '98%',
      '90%',
      '64%',
      '34%',
      '71%'
    ];

    List videoLinks = [
      'assets/video1.mp4',
      'assets/Fighting002_x264.mp4',
      'assets/Fighting005_x264.mp4',
      'assets/Fighting007_x264.mp4',
      'assets/Fighting020_x264.mp4',
      'assets/Fighting027_x264.mp4',
      'assets/Fighting038_x264.mp4',
      'assets/Fighting044_x264.mp4'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        actions: const [],
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => Home(
                //               cctv: "Live Footage " +
                //                   location[index].toString().substring(0, 6) +
                //                   " (Place or Street)",
                //               crime: "Fighting detected at " +
                //                   location[index].toString().substring(8) +
                //                   " in " +
                //                   location[index].toString().substring(0, 6) +
                //                   ". People are fighting at steet.",
                //               acc: "There is " +
                //                   accuracy[index] +
                //                   " accuracy of having the fight",
                //               video: videoLinks[index],
                //             )));
              },
              child: SizedBox(
                // height: 50,
                width: myWidth,
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  child: ListTile(
                    leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1657524432873-c37d2ac7b8cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60")),
                    title: Text(location[index]),
                    subtitle: Text(noti[index]),
                    trailing: Text(accuracy[index]),
                  ),
                ),
              ),
            );
          }),
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Home(
                //               cctv: "Live Footage CCTV 1(Place or Street)",
                //               crime:
                //                   "Fighting detected at New York in CCTV 1. People are fighting at steet.",
                //               acc: "There is 87% accuracy of having the fight",
                //               video: "assets/video1.mp4",
                //             )));
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const CctvControl()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
