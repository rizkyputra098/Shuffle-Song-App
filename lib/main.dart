import 'package:flutter/material.dart';
import 'package:shuffle_song_app/shufflesongscreen.dart';

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
      home: const ShuffleSongScreen(),
    );
  }
}
