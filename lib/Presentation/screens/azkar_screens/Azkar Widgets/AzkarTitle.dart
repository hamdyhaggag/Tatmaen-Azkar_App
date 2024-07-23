import 'package:flutter/material.dart';

class AzkarTitle extends StatelessWidget {
  final double screenWidth;
  final String title;

  const AzkarTitle({super.key, required this.screenWidth, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: screenWidth * 0.1,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    );
  }
}
