import 'package:portfolio/enums/info_tile_type.dart';

const String infoTileTypeKey = 'type';
const String infoTileValuesKey = 'values';

class InfoTileM {
  InfoTileType _type;
  InfoTileType get type => _type;

  //
  List<String> _values;
  List<String> get values => _values;

  //
  InfoTileM(Map<String, dynamic> map) {
    _type = map[infoTileTypeKey] ?? InfoTileType.NO_TYPE_ERROR;

    if (map[infoTileValuesKey] != null) {
      _values = map[infoTileValuesKey].cast<String>();
    } else {
      _values = List();
    }
  }
}
