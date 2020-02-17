import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/article/basic_info.dart';
import 'package:portfolio/ui/article/main_img.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class ArticlePage extends StatelessWidget {
  final ArticleM _article;

  ArticlePage(String articleId) : _article = articleS.getWithId(articleId);

  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: <Widget>[
        SizedBox(height: 32),
        _buildTopSection(context),
        _buildHorizontalSeparator(context),
      ],
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        Container(
          constraints: BoxConstraints(maxWidth: 250),
          child: MainImg(_article.pathToImg),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: BasicInfo(_article),
        ),
      ],
    );
  }

  Widget _buildVerticalSeparator(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        width: 4,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildHorizontalSeparator(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 4,
        constraints: BoxConstraints(maxWidth: 800),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
