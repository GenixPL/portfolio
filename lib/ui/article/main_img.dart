import 'package:flutter/material.dart';
import 'package:portfolio/values/shadow.dart';

class MainImg extends StatelessWidget {
  final String _pathToImg;

  MainImg(this._pathToImg);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [shadow],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(_pathToImg),
          ),
        ),
      ),
    );
  }
}
