import 'package:flutter/material.dart';

import "../utils/welcoming.dart";
import "../styles/heading.dart";

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          returnWelcoming(),
          style: headingStyles,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
