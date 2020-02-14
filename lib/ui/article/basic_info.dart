import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/ui/common/text_tile_wrapper/text_tile_wrapper.dart';

class BasicInfo extends StatelessWidget {
  final ArticleM _article;

  BasicInfo(this._article);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildTitle(context),
        SizedBox(height: 16),
        _buildTags(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Title:'),
        SizedBox(width: 8),
        Text(
          _article.title,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildTags(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Tags:'),
        SizedBox(width: 8),
        TextTilesWrapper(texts: _article.tags),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 20,
        letterSpacing: 1.5,
      ),
    );
  }
}
