import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.stringText,
    this.fontSize = 20,
    this.colorText = Colors.white,
  });
  final String stringText;
  final double fontSize;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Text(
      stringText,
      style: TextStyle(color: colorText, 
      fontSize: fontSize),
    );
  }
}
