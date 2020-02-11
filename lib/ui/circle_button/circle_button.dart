import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/squircle_shape.dart';

class CircleButton extends StatelessWidget {
  final Function() onTap;
  final Color backgroundColor;
  final Color textColor;
  final double size;

  CircleButton({
    this.onTap,
    this.backgroundColor = Colors.orange,
    this.textColor,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Material(
      shape: SquircleBorder(),
      color: backgroundColor,
      child: Container(
        width: size,
        height: size,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "D",
              style: TextStyle(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
