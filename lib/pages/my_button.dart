import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String IconImagePath;
  final String buttonText;

  MyButton({
    Key? key,
    required this.IconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        buttonText,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
