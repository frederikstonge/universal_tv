import 'iptv_data_type.dart';
import 'models/epg/epg.dart';

abstract class BaseIptvClient {
  Future initialize();

  Future getData({required IPTVDataType type, String? category, String? query});

  Future<ElectronicProgramGuide?> getEpg();
}
