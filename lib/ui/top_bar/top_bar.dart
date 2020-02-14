import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/navigation/routes.dart';
import 'package:portfolio/ui/common/squircle_icon_button/squircle_icon_button.dart';

import 'dart:js' as js;

class TopBar extends StatelessWidget {
  final double _normalItemSize = 40;
  final double _normalIconSize = 20;

  final double _highlightedItemSize = 52;
  final double _highlightedIconSize = 24;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //TODO add info that flutter web is in development
          child: Container(),
        ),
        _buildCenterPart(context),
        Expanded(
          child: _buildRightPart(context),
        ),
      ],
    );
  }

  Widget _buildCenterPart(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildKnowledgeButton(context),
        SizedBox(width: 16),
        _buildHomeButton(context),
        SizedBox(width: 16),
        _buildInfoButton(context),
      ],
    );
  }

  Widget _buildRightPart(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SquircleIconButton(
          iconData: FontAwesomeIcons.github,
          backgroundColor: Color(0xff24292e),
          iconSize: _normalIconSize,
          size: _normalItemSize,
          onTap: _moveToGithub,
        ),
        SizedBox(width: 8),
        SquircleIconButton(
          iconData: FontAwesomeIcons.youtube,
          backgroundColor: Colors.red,
          iconSize: _normalIconSize,
          size: _normalItemSize,
          onTap: _moveToYouTube,
        ),
      ],
    );
  }

  //BUTTONS

  Widget _buildKnowledgeButton(BuildContext context) {
    bool isNormal = (router.lastRoute == knowledgeMenuRoute) ? false : true;

    return SquircleIconButton(
      iconData: FontAwesomeIcons.atlas,
      size: isNormal ? _normalItemSize : _highlightedItemSize,
      iconSize: isNormal ? _normalIconSize : _highlightedIconSize,
      onTap: () => Navigator.pushNamed(context, knowledgeMenuRoute),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    bool isNormal = (router.lastRoute == homeRoute) ? false : true;

    return SquircleIconButton(
      iconData: FontAwesomeIcons.home,
      size: isNormal ? _normalItemSize : _highlightedItemSize,
      iconSize: isNormal ? _normalIconSize : _highlightedIconSize,
      onTap: () => Navigator.pushNamed(context, homeRoute),
    );
  }

  Widget _buildInfoButton(BuildContext context) {
    bool isNormal = (router.lastRoute == infoRoute) ? false : true;

    return SquircleIconButton(
      iconData: FontAwesomeIcons.solidAddressCard,
      size: isNormal ? _normalItemSize : _highlightedItemSize,
      iconSize: isNormal ? _normalIconSize : _highlightedIconSize,
      onTap: () => Navigator.pushNamed(context, infoRoute),
    );
  }

  // FUNCTIONS

  _moveToGithub() {
    js.context.callMethod('open', ['https://github.com/GenixPL']);
  }

  _moveToYouTube() {
    js.context.callMethod('open', [
      'https://www.youtube.com/channel/UC8iFSZEpTSbq8ActXXbvyfw?view_as=subscriber'
    ]);
  }
}
