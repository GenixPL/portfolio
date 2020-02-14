import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/article/basic_info.dart';
import 'package:portfolio/ui/article/main_img.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';
import 'package:portfolio/values/shadow.dart';

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
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxWidth: 250),
                  child: MainImg(_article.pathToImg),
                ),
              ],
            ),
          ),
          _buildVerticalSeparator(context),
          Expanded(
            child: Row(
              children: <Widget>[
                BasicInfo(_article),
              ],
            ),
          ),
        ],
      ),
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
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
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
