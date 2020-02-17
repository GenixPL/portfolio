import 'package:flutter/material.dart';
import 'package:portfolio/ui/top_bar/top_bar.dart';

class BasicPage extends StatelessWidget {
  final List<Widget> children;
  final bool limitWidth;
  final double maxWidth;

  BasicPage({
    this.children,
    this.limitWidth = true,
    this.maxWidth = 800,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TopBar(),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: limitWidth ? maxWidth : double.infinity,
            ),
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
