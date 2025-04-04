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

class ShuffleSongWidget extends StatelessWidget {
  const ShuffleSongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                "assets/images/hindia.jpeg",
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "KIta kesana - Hindia",
                style: TextStyle(
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
    );
  }
}
