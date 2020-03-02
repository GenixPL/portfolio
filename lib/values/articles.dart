import 'package:portfolio/enums/info_tile_type.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/models/info_tile_m.dart';

const article_Placelytics = {
  articleIdKey: 'placelytics',
  articleBasicTagsKey: ['Flutter', 'Mobile App'],
  articleTitleKey: 'Placelytics',
  articlePathToImgKey: 'assets/placelytics/logo.jpg',
  articleTagsKey: ['Flutter', 'Mobile App', 'Android', 'iOS'],
  articleTechnologyStackKey: [
    'Flutter',
    'Dart',
    'Rive',
    'Firestore',
    'Firebase Auth'
  ],
  articleStartDateKey: '2019-10-08T00:00:00.000000',
  articleEndDateKey: '2020-01-29T00:00:00.000000',
  articleIntoTilesKey: [
    {
      infoTileTypeKey: InfoTileType.YOUTUBE,
      infoTileValuesKey: ['id'],
    }
  ],
};

const article_Pictile = {
  articleIdKey: 'pictile',
  articleBasicTagsKey: ['Flutter', 'Mobile App'],
  articleTitleKey: 'Pictile',
  articlePathToImgKey: 'assets/pictile/logo.png',
  articleTagsKey: ['Flutter', 'Mobile App', 'Android', 'iOS'],
  articleTechnologyStackKey: ['Flutter', 'Dart', 'sqflite'],
  articleStartDateKey: '2020-02-24T00:00:00.000000',
  articleEndDateKey: '2020-02-28T00:00:00.000000',
  articleStoreLinkKey:
      'https://play.google.com/store/apps/details?id=com.genix.pictile',
  articleRepoLinkKey: 'https://github.com/GenixPL/pictile',
  articleIntoTilesKey: [
    {
      infoTileTypeKey: InfoTileType.MANY_PICTURES,
      infoTileValuesKey: [
        'assets/pictile/screen_1.jpg',
        'assets/pictile/screen_2.jpg',
        'assets/pictile/screen_3.jpg',
        'assets/pictile/screen_4.jpg',
        'assets/pictile/screen_5.jpg',
        'assets/pictile/screen_6.jpg',
        'assets/pictile/screen_7.jpg',
      ],
    },
  ],
};

const article_Example = {
  articleIdKey: 'example',
  articleTitleKey: 'Example',
  articlePathToImgKey: 'assets/placelytics/logo.jpg',
  articleTagsKey: ['Flutter', 'Android', 'iOS'],
  articleIntoTilesKey: [
    {
      infoTileTypeKey: InfoTileType.BASIC_INFO,
      infoTileValuesKey: ['Some example value'],
    },
    {
      infoTileTypeKey: InfoTileType.BASIC_INFO,
      infoTileValuesKey: ['Some example value 2'],
    },
  ],
};
