import 'package:flutter/material.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';

class InfoLanguages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoHeader('Languages'),
        SizedBox(height: 4),
        InfoRegularText('  - Polish  (native)'),
        InfoRegularText('  - English  (C1)'),
        Row(
          children: <Widget>[
            InfoRegularText('  - German  (~B1 '),
            Icon(Icons.arrow_upward, size: 16),
            InfoRegularText(')'),
          ],
        ),
      ],
    );
  }
}
