import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/top_bar/top_bar.dart';

class BasicPage extends StatelessWidget {
  final List<Widget> children;

  BasicPage({
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TopBar(),
        ]..addAll(children),
      ),
    );
  }
}
