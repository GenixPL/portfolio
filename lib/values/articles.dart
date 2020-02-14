import 'package:portfolio/enums/info_tile_type.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/models/info_tile_m.dart';

const article_Placelytics = {
  articleIdKey: 'placelytics',
  articleTitleKey: 'Placelytics App',
  articlePathToImgKey: 'assets/placelytics/logo.jpg',
  articleTagsKey: ['Flutter', 'Mobile App', 'Android', 'iOS'],
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
