import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/top_bar/top_bar.dart';

class KnowledgeMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Text('Knowledge'),
        ],
      ),
    );
  }
}
