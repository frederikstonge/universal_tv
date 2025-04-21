import 'iptv_data_type.dart';

abstract class BaseIptvClient {
  Future initialize();

  Future getData({required IPTVDataType type, String? category, String? query});
}
