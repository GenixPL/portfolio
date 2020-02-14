import 'package:portfolio/models/info_tile_m.dart';

const String articleIdKey = 'id';
const String articleBasicTagsKey = 'basic_tags';
const String articleTagsKey = 'tags';
const String articleIntoTilesKey = 'info_tiles';
const String articlePathToImgKey = 'path_to_img';
const String articleTitleKey = 'title';

class ArticleM {
  String _id;

  String get id => _id;

  //
  List<String> _tags;

  List<String> get tags => _tags;

  //
  List<String> _basicTags;

  List<String> get basicTags => _basicTags;

  //
  List<InfoTileM> _infoTiles;

  List<InfoTileM> get infoTiles => _infoTiles;

  //
  String _pathToImg;

  String get pathToImg => _pathToImg;

  //
  String _title;

  String get title => _title;

  //TODO add closeDay
  //TODO add openDay
  //TODO add lastUpdateDay
  //TODO add repo link
  //TODO add basic tags list

  //
  ArticleM(Map<String, dynamic> map) {
    _id = map[articleIdKey] ?? (throw ArgumentError('NO ID'));

    if (map[articleTagsKey] != null) {
      _tags = map[articleTagsKey].cast<String>();
    } else {
      _tags = List();
    }

    if (map[articleBasicTagsKey] != null) {
      _basicTags = map[articleBasicTagsKey].cast<String>();
    } else {
      _basicTags = List();
    }

    _infoTiles = List();
    if (map[articleIntoTilesKey] != null) {
      map[articleIntoTilesKey].forEach((map) {
        _infoTiles.add(InfoTileM(map));
      });
    }

    _pathToImg =
        map[articlePathToImgKey] ?? (throw ArgumentError('NO PATH TO IMG'));

    _title = map[articleTitleKey] ?? (throw ArgumentError('NO TITLE'));
  }
}
