import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/ui/common/squircle_icon_button/squircle_icon_button.dart';
import 'package:portfolio/ui/common/top_bar/top_bar.dart';

import 'dart:js' as js;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SquircleIconButton(
                iconData: FontAwesomeIcons.github,
                backgroundColor: Colors.grey[850],
                textColor: Colors.white,
                onTap: _moveToGithub,
              ),
              SizedBox(width: 16),
              SquircleIconButton(
                iconData: FontAwesomeIcons.youtube,
                backgroundColor: Colors.grey[850],
                onTap: _moveToYouTube,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _moveToGithub() {
    js.context.callMethod('open', ['https://github.com/GenixPL']);
  }

  _moveToYouTube() {
    js.context.callMethod('open', ['https://www.youtube.com/channel/UC8iFSZEpTSbq8ActXXbvyfw?view_as=subscriber']);
  }
}
