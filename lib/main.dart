import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/themes/main_theme.dart';
import 'package:portfolio/ui/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;

    return MaterialApp(
      theme: mainTheme,
      home: HomePage(),
    );
  }
}
