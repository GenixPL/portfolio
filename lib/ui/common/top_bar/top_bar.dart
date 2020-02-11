import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/squircle_button/squircle_button.dart';

class TopBar extends StatelessWidget {
  final double _normalItemSize = 40;
  final double _highlightedItemSize = 52;

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
        SquircleButton(
          size: _normalItemSize,
        ),
        SizedBox(width: 16),
        SquircleButton(
          size: _highlightedItemSize,
        ),
        SizedBox(width: 16),
        SquircleButton(
          size: _normalItemSize,
        ),
      ],
    );
  }
}
