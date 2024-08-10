import 'package:flutter/material.dart';

int _index = 0;

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  void initState() {
    super.initState();
  }

  void navigatorPushNamed(String path) {
    Navigator.of(context).pushNamed(path);
  }

  _navigateTo(BuildContext context, int index) async {
    switch (index) {
      case 0:
        navigatorPushNamed('/');
      case 1:
        navigatorPushNamed('/now-playing');
      case 2:
        navigatorPushNamed('/settings');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
            _navigateTo(context, index);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: "Now playing"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ]);
  }
}
