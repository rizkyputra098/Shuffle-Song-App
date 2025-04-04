import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const ShuffleSongApp());
}

class ShuffleSongApp extends StatelessWidget {
  const ShuffleSongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shuffle Song App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShuffleSongWidget(),
    );
  }
}

const albumCoverList = [
  "assets/images/bruno_major.jpeg",
  "assets/images/coldplay.jpeg",
  "assets/images/hindia.jpeg",
  "assets/images/honne.jpeg",
  "assets/images/maroon5.jpeg",
  "assets/images/nadin_amizah.jpeg",
];

const albumtitle = [
  "Nothing - Bruno Major",
  "Fix YOu - Coldplay",
  "Kita Ke sana - HIndia",
  "By My Side - Honne",
  "Sad - Maroon 5",
  "Mendarah - Nadin",
];

class ShuffleSongWidget extends StatefulWidget {
  const ShuffleSongWidget({super.key});

  @override
  State<ShuffleSongWidget> createState() => _ShuffleSongWidgetState();
}

class _ShuffleSongWidgetState extends State<ShuffleSongWidget> {
  int _currentIndex = 0;

  void _shuffelSong() {
    Random random = Random();
    int randomIndex = random.nextInt(6);
    setState(() {
      _currentIndex = randomIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/images/spotify.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "spotify",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                width: 250,
                height: 250,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      albumCoverList[_currentIndex],
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      albumtitle[_currentIndex],
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: IconButton(
                onPressed: _shuffelSong,
                icon: const Icon(
                  Icons.shuffle_on_rounded,
                  color: Color.fromARGB(255, 0, 255, 34),
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
