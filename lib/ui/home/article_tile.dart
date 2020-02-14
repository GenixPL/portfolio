import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/ui/common/text_tile_wrapper/text_tile_wrapper.dart';
import 'package:portfolio/values/shadow.dart';

class ArticleTile extends StatelessWidget {
  final ArticleM _article;

  ArticleTile(this._article);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, // this preserves shadow
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [shadow],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildUpperSection(),
              _buildLowerSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpperSection() {
    return Container(
      width: 200,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            _article.pathToImg,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildLowerSection() {
    return Container(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _article.title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            TextTilesWrapper(texts: _article.basicTags),
          ],
        ),
      ),
    );
  }
}
