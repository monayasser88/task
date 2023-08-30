import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text1, required this.text2, required this.text3, required this.text4});
  final String text1;
  final String text2;
  final String text3;
  final String text4;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              text1,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              text2,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              text3,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              text4,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            
          ],
        ),
      ],
    );
  }
}
