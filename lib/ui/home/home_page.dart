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
        Expanded(
          child: _buildBody(),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        Text('HOME'),
        SizedBox(height: 16),
        Text('APPS'),
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
}
