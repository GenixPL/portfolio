import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class ArticlePage extends StatelessWidget {
  final String _articleId;
  final ArticleM _article;

  ArticlePage(this._articleId) : _article = articleS.getWithId(_articleId);

  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: <Widget>[
        _buildTopSection(),
      ],
    );
  }

  Widget _buildTopSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('A'),
      ],
    );
  }
}
