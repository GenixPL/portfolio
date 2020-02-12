import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class KnowledgeMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: [
        Text('Knowledge'),
        RaisedButton(
          child: Text("go back"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
