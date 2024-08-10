import "package:flutter/material.dart";
import "package:musito/widgets/bottom_app_bar.dart";

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Hello World!"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
