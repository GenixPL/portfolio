import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';

class ArticleTile extends StatelessWidget {
  final ArticleM _article;

  ArticleTile(this._article);

  @override
  Widget build(BuildContext context) {
    print(_article.pathToImg);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.redAccent,
            child: Image.asset(
              _article.pathToImg,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Text(_article.title),
          ),
        ],
      ),
    );
  }
}
