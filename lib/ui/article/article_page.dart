import 'package:flutter/material.dart';
import 'package:portfolio/enums/info_tile_type.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/models/info_tile_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/article/basic_info.dart';
import 'package:portfolio/ui/article/main_img.dart';
import 'package:portfolio/ui/article/many_pictures.dart';
import 'package:portfolio/ui/article/youtube_player.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class ArticlePage extends StatelessWidget {
  final ArticleM _article;

  ArticlePage(String articleId) : _article = articleS.getWithId(articleId);

  @override
  Widget build(BuildContext context) {
    return BasicPage(
      children: <Widget>[
        _buildTopSection(context),
        _buildHorizontalSeparator(context),
        for (int i = 0; i < _article.infoTiles.length; i++)
          _buildProperInfoTile(_article.infoTiles[i]),
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
        SizedBox(height: 8),
        BasicInfo(_article),
      ],
    );
  }

  Widget _buildProperInfoTile(InfoTileM infoTile) {
    switch (infoTile.type) {
      case InfoTileType.NO_TYPE_ERROR:
        return Text('ERROR');

      case InfoTileType.BASIC_INFO:
        return Text('Not yet implemented.'); //TODO

      case InfoTileType.MANY_PICTURES:
        return ManyPictures(infoTile.values);

      case InfoTileType.YOUTUBE:
        return YouTubePlayer();
        break;
    }

    return Text('NO SUCH TYPE (ERROR)');
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
      padding: const EdgeInsets.only(top: 8, bottom: 8),
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
