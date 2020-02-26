import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/navigation/routes.dart';
import 'package:portfolio/ui/info/parts/info_link.dart';
import 'package:portfolio/ui/info/texts/info_header.dart';
import 'package:portfolio/ui/info/texts/info_regular_text.dart';
import 'package:portfolio/values/articles.dart';

class InfoMainProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InfoHeader('Main Projects'),
        SizedBox(height: 4),
        _buildPlacelytics(context),
      ],
    );
  }

  Widget _buildPlacelytics(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            InfoHeader(
              'Placelytics (BSc project)',
              fontSize: 18,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            InfoLink(
              iconData: FontAwesomeIcons.arrowRight,
              onTap: () => Navigator.pushNamed(
                context,
                articleRoute + "/" + article_Placelytics[articleIdKey],
              ),
            ),
          ],
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
                child:
                    InfoRegularText('Flutter, Firestore, Firebase Auth, Rive'),
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
              InfoRegularText('My parts:'),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InfoRegularText('Whole application'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
