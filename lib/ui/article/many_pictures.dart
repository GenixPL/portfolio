import 'package:flutter/material.dart';
import 'package:portfolio/values/shadow.dart';

class ManyPictures extends StatelessWidget {
  final List<String> picturePaths;

  ManyPictures(this.picturePaths);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: <Widget>[
        for (int i = 0; i < picturePaths.length; i++)
          _buildImg(picturePaths[i]),
      ],
    );
  }

  Widget _buildImg(String path) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250),
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
            child: Image.asset(path),
          ),
        ),
      ),
    );
  }
}
