import 'package:universal_tv/data/iptv_data_type.dart';
import 'package:universal_tv/data/models/epg.dart';

abstract class BaseIptvClient {
  Future initialize();

  Future getData({required IPTVDataType type, String? category, String? query});

  Future<EPG?> getEpg();
}