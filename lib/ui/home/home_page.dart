import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';
import 'package:portfolio/ui/home/article_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: <Widget>[
        _buildBody(context),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildHeader(context, 'DEVELOPED APPS'),
        SizedBox(height: 8),
        _buildAppsSection(),
      ],
    );
  }

  Widget _buildAppsSection() {
    List<ArticleM> appArticles = articleS.getApps();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          for (int i = 0; i < appArticles.length; i++)
            ArticleTile(appArticles[i]),
        ],
      ),
    );
  }

  // OTHER

  Widget _buildHeader(BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    );
  }
}
