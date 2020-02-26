import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/squircle_icon_button/squircle_icon_button.dart';

class InfoLink extends StatelessWidget {
  final IconData iconData;
  final Function() onTap;

  final double _iconSize = 12;
  final double _itemSize = 20;

  InfoLink({
    @required this.iconData,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SquircleIconButton(
      iconData: iconData,
      iconSize: _iconSize,
      size: _itemSize,
      onTap: onTap,
    );
  }
}
