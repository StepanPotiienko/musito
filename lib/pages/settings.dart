import 'package:flutter/material.dart';
import 'package:musito/widgets/bottom_app_bar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: BottomBar(), body: Text("Hello World!!!"));
  }
}
