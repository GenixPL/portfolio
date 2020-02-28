import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/ui/info/parts/info_link.dart';
import 'package:portfolio/ui/info/parts/info_period.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';

import 'dart:js' as js;

class InfoWorkExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoHeader('Work Experience'),
        SizedBox(height: 4),
        _buildBtp(),
      ],
    );
  }

  Widget _buildBtp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            InfoHeader(
              'Mobile Junior Developer',
              fontSize: 18,
              color: Colors.white,
            ),
            SizedBox(width: 32),
            Flexible(child: InfoPeriod('Apr 2018', 'Oct 2018')),
          ],
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: <Widget>[
              InfoRegularText('Company:'),
              SizedBox(width: 8),
              Flexible(child: InfoRegularText('Beside The Park')),
              SizedBox(width: 16),
              InfoLink(
                iconData: FontAwesomeIcons.link,
                onTap: () => js.context
                    .callMethod('open', ['https://www.besidethepark.com']),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InfoRegularText('Main technologies:'),
              SizedBox(width: 8),
              Flexible(
                child: InfoRegularText(
                    'iOS, Android, Objective-C, Java, Kiwi, Mockito'),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InfoRegularText('Responsibilities:'),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Adding new features (50%)'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Testing (40%)'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Additional debugging (5%)'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Writing documentation (2.5%)'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Communication with client (2.5%)'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
