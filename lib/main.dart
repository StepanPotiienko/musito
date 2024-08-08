import 'package:flutter/material.dart';

import "widgets/header.dart";
import "widgets/music_list_item.dart";
import "widgets/bottom_app_bar.dart";

import "theme/theme.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musito',
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.theme,
      home: const Home(),
      themeMode: ThemeMode.dark,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomBar(),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.clamp,
                    colors: [
                  Colors.black87,
                  Colors.black,
                ])),
            child: const Center(
              child: Column(
                children: [
                  Header(),
                  MusicListItem(
                      backgroundColor: Colors.purpleAccent,
                      type: "Meditation",
                      gradientColor: [Colors.purple, Colors.deepPurple]),
                  MusicListItem(backgroundColor: Colors.blue, type: "Sleep")
                ],
              ),
            )));
  }
}
