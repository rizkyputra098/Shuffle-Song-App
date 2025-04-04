import 'dart:math';
import 'package:shuffle_song_app/data.dart';
import 'package:flutter/material.dart';

class ShuffleSongScreen extends StatefulWidget {
  const ShuffleSongScreen({super.key});

  @override
  State<ShuffleSongScreen> createState() => _ShuffleSongScreenState();
}

class _ShuffleSongScreenState extends State<ShuffleSongScreen> {
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
                      Data.albumCoverList[_currentIndex],
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      Data.albumtitle[_currentIndex],
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