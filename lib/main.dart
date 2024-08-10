import 'package:flutter/material.dart';
import "package:musito/pages/now_playing.dart";
import "package:musito/pages/settings.dart";
import "package:musito/widgets/bottom_app_bar.dart";

import "widgets/header.dart";
import "widgets/music_list_item.dart";

import "theme/theme.dart";

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musito',
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.theme,
      initialRoute: '/home',
      themeMode: ThemeMode.dark,
      routes: <String, WidgetBuilder>{
        '/': (context) => const Home(),
        '/now-playing': (context) => const NowPlaying(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: BottomBar(), body: AppBackground());
  }
}

class AppBackground extends StatelessWidget {
  const AppBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.clamp,
                colors: [
              Colors.black,
              Colors.blue.shade900,
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
        ));
  }
}
