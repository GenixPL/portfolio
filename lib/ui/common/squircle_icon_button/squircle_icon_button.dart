import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/squircle_icon_button/squircle_shape.dart';

class SquircleIconButton extends StatelessWidget {
  final Function() onTap;
  final Color backgroundColor;
  final Color textColor;
  final double size;
  final IconData iconData;
  final double iconSize;

  SquircleIconButton({
    this.onTap,
    this.backgroundColor,
    this.textColor,
    this.size = 48,
    this.iconData,
    this.iconSize = 24,
  }) : assert(iconData != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Material(
      shape: SquircleShape(),
      color: (backgroundColor != null)
          ? backgroundColor
          : Theme.of(context).accentColor,
      child: Container(
        width: size,
        height: size,
        child: Icon(
          iconData,
          size: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
