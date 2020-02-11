import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function() onTap;
  final Color backgroundColor;
  final Color textColor;

  CircleButton({
    this.onTap,
    this.backgroundColor = Colors.orange,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "D",
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
