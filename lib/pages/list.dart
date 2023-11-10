import 'package:flutter/material.dart';

class List extends StatelessWidget {
  final String IconImagePath;
  final String tileTitle;
  final String titleSubTitle;

  const List({
    Key? key,
    required this.IconImagePath,
    required this.tileTitle,
    required this.titleSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 80,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 20,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(IconImagePath),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        tileTitle,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
