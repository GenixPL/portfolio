import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoRegularText extends StatelessWidget {
  final String text;
  final double fontSize;

  InfoRegularText(
    this.text, {
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'RobotoSlab',
        fontSize: fontSize,
      ),
    );
  }
}
