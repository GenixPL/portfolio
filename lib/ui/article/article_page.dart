import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class ArticlePage extends StatelessWidget {
  final ArticleM _article;

  ArticlePage(this._article);

  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: <Widget>[
        Text(_article.title),
      ],
    );
  }
}
