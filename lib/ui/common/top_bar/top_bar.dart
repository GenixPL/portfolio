import 'package:flutter/material.dart';
import 'package:portfolio/ui/circle_button/circle_button.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleButton(),
        SizedBox(width: 16),
        CircleButton(),
        SizedBox(width: 16),
        CircleButton(),
      ],
    );
  }
}
