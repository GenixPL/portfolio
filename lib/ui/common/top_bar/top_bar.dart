import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/navigation/routes.dart';
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
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildKnowledgeButton(context),
        SizedBox(width: 16),
        _buildHomeButton(context),
        SizedBox(width: 16),
        _buildInfoButton(context),
      ],
    );
  }

  Widget _buildKnowledgeButton(BuildContext context) {
    return SquircleIconButton(
      iconData: FontAwesomeIcons.atlas,
      size: _normalItemSize,
      iconSize: _normalIconSize,
      onTap: () => Navigator.pushNamed(context, knowledgeMenuRoute),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return SquircleIconButton(
      iconData: FontAwesomeIcons.home,
      size: _highlightedItemSize,
      iconSize: _highlightedIconSize,
      onTap: () => Navigator.pushNamed(context, homeRoute),
    );
  }

  Widget _buildInfoButton(BuildContext context) {
    return SquircleIconButton(
      iconData: FontAwesomeIcons.solidAddressCard,
      size: _normalItemSize,
      iconSize: _normalIconSize,
      onTap: () => Navigator.pushNamed(context, infoRoute),
    );
  }
}
