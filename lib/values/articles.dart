import 'package:portfolio/enums/info_tile_type.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/models/info_tile_m.dart';

const article_Placelytics = {
  articleIdKey: 'placelytics',
  articleBasicTagsKey: ['Flutter', 'Mobile App'],
  articleTitleKey: 'Placelytics',
  articlePathToImgKey: 'assets/placelytics/logo.jpg',
  articleTagsKey: ['Flutter', 'Mobile App', 'Android', 'iOS'],
  articleTechnologyStackKey: ['Flutter', 'Dart', 'Rive', 'Firestore', 'Firebase Auth'],
  articleStartDateKey: '2019-10-08T00:00:00.000000',
  articleEndDateKey: '2020-01-29T00:00:00.000000',
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
