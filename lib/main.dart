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
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const Home(),
      themeMode: ThemeMode.system,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: BottomBar(),
        body: Center(
          child: Column(
            children: [
              Header(),
              MusicListItem(
                backgroundColor: Colors.purpleAccent,
                type: "Meditation",
              ),
              MusicListItem(backgroundColor: Colors.blue, type: "Sleep")
            ],
          ),
        ));
  }
}
