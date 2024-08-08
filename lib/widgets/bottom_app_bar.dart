import "package:flutter/material.dart";

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // TODO: #4 By pressing on BottomNavigationBarItem, user should be redirected to the corresponding page
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: "Now playing"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ]);
  }
}
