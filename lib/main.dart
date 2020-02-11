import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/navigation/router.dart';
import 'package:portfolio/navigation/routes.dart';
import 'package:portfolio/themes/main_theme.dart';
import 'package:portfolio/ui/home/home_page.dart';

void main() {
  runApp(MyApp());
}

final router = Router();

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;

    return MaterialApp(
      theme: mainTheme,
      initialRoute: homeRoute,
      onGenerateRoute: router.generateRoute,
    );
  }
}
