import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/values/articles.dart';

final articleS = ArticleS();

class ArticleS {
  List<ArticleM> _articles;

  List<ArticleM> get articles => _articles;

  //
  List<ArticleM> _latestArticles;

  List<ArticleM> get latestArticles => _latestArticles;

  //
  ArticleS() {
    _articles = List();
    _latestArticles = List();

    _articles.add(ArticleM(article_Placelytics));
    _articles.add(ArticleM(article_Pictile));
    _articles.add(ArticleM(article_TheHardestGame));
  }

  List<ArticleM> getApps() {
    List<ArticleM> toReturn = List();

    for (int i = 0; i < _articles.length; i++) {
      bool isApp = false;

      _articles[i].tags.forEach((tag) {
        if (tag.toLowerCase().contains('app')) {
          isApp = true;
        }
      });

      if (isApp) {
        toReturn.add(_articles[i]);
      }
    }

    return toReturn;
  }

  ArticleM getWithId(String id) {
    for (int i = 0; i < _articles.length; i++) {
      if (_articles[i].id == id) {
        return _articles[i];
      }
    }

    return null;
  }

  List<String> getAllTags() {
    List<String> toReturn = List();

    _articles.forEach((a) {
      a.tags.forEach((t) {
        if (!toReturn.contains(t)) {
          toReturn.add(t);
        }
      });
    });

    return toReturn;
  }

  List<ArticleM> getWithTags(List<String> tags) {
    if (tags == null || tags.length == 0) {
      return _articles;
    }

    List<ArticleM> toReturn = List();

    for (int i = 0; i < _articles.length; i++) {
      bool has = false;

      for (int j = 0; j < tags.length; j++) {
        if (_articles[i].tags.contains(tags[j])) {
          toReturn.add(_articles[i]);
          has = true;
          break;
        }
      }

      if (has) {
        continue;
      }
    }

    return toReturn;
  }
}
