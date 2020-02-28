import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoHeader extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  InfoHeader(
    this.text, {
    this.fontSize = 20,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'RobotoSlab',
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 1.5,
        color: color,
      ),
    );
  }

  static TextStyle getDefaultTextStyle() {
    return TextStyle(
      fontFamily: 'RobotoSlab',
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5,
      color: Colors.orange,
    );
  }
}
