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
    _articles.add(ArticleM(article_Example));
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
}
