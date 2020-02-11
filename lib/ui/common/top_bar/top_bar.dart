import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/ui/common/squircle_icon_button/squircle_icon_button.dart';

class TopBar extends StatelessWidget {
  final double _normalItemSize = 40;
  final double _normalIconSize = 20;

  final double _highlightedItemSize = 52;
  final double _highlightedIconSize = 24;

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
        SquircleIconButton(
          iconData: FontAwesomeIcons.atlas,
          size: _normalItemSize,
          iconSize: _normalIconSize,
        ),
        SizedBox(width: 16),
        SquircleIconButton(
          iconData: FontAwesomeIcons.home,
          size: _highlightedItemSize,
          iconSize: _highlightedIconSize,
        ),
        SizedBox(width: 16),
        SquircleIconButton(
          iconData: FontAwesomeIcons.solidAddressCard,
          size: _normalItemSize,
          iconSize: _normalIconSize,
        ),
      ],
    );
  }
}
