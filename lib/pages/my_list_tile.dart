// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String IconImagePath;
  final String tileTitle;
  final String titleSubTitle;

  const MyListTile({
    Key? key,
    required this.IconImagePath,
    required this.tileTitle,
    required this.titleSubTitle,
  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(IconImagePath),
            ),
            SizedBox(width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tileTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  titleSubTitle,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(width: 80),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ],
    );
  }
}
