import 'package:portfolio/models/info_tile_m.dart';

const String articleIdKey = 'id';
const String articleBasicTagsKey = 'basic_tags';
const String articleTagsKey = 'tags';
const String articleIntoTilesKey = 'info_tiles';
const String articlePathToImgKey = 'path_to_img';
const String articleTitleKey = 'title';
const String articleTechnologyStackKey = 'technology_stack';
const String articleStartDateKey = 'start_date';
const String articleEndDateKey = 'end_date';
const String articleRepoLinkKey = 'repo_link';
const String articleStoreLinkKey = 'store_link';

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

  //
  List<String> _technologyStack;
  List<String> get technologyStack => _technologyStack;

  //
  DateTime _startDate;
  DateTime get startDate => _startDate;

  //
  DateTime _endDate;
  DateTime get endDate => _endDate;

  //
  String _repoLink;
  String get repoLink => _repoLink;

  //
  String _storeLink;
  String get storeLink => _storeLink;

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

    if (map[articleTechnologyStackKey] != null) {
      _technologyStack = map[articleTechnologyStackKey].cast<String>();
    } else {
      _technologyStack = List();
    }

    if (map[articleStartDateKey] != null) {
      _startDate = DateTime.parse(map[articleStartDateKey]);
    }

    if (map[articleEndDateKey] != null) {
      _endDate = DateTime.parse(map[articleEndDateKey]);
    }

    _repoLink = map[articleRepoLinkKey];

    _storeLink = map[articleStoreLinkKey];
  }
}
