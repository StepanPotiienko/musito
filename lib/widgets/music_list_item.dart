import "package:flutter/material.dart";

class MusicListItem extends StatelessWidget {
  final Color backgroundColor;
  final Color fontColor;
  final String type;

  const MusicListItem(
      {super.key,
      this.backgroundColor = Colors.purple,
      required this.type,
      this.fontColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Now playing $type'),
          duration: const Duration(seconds: 1),
        ));
      },
      child: (Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor,
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 3)
            ]),
        child: Text(
          type,
          style: TextStyle(color: fontColor),
        ),
      )),
    );
  }
}
