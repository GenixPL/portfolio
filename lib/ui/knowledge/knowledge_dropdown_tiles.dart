import 'package:flutter/material.dart';

class KnowledgeDropdownTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton(
          hint: Text('Mobile Apps'),
          onChanged: (value) {
            print(value);
          },
          items: <DropdownMenuItem<dynamic>>[
            DropdownMenuItem(
              child: Text('1'),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text('2'),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text('3'),
              value: 3,
            ),
          ],
        ),
      ],
    );
  }
}
