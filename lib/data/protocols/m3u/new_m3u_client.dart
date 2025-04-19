import 'package:dio/dio.dart';

import '../../base_iptv_client.dart';
import '../../epg_parser.dart';
import '../../iptv_data_type.dart';
import '../../models/epg/epg.dart';

/// https://github.com/HamzaBhf00/m3u-tags-iptv
class NewM3uClient extends BaseIptvClient {
  final List<Uri> m3ulinks;
  final Uri? epgLink;

  final Dio dio = Dio();

  NewM3uClient({required this.m3ulinks, this.epgLink});

  @override
  Future initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  Future getData({required IPTVDataType type, String? category, String? query}) {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  Future<ElectronicProgramGuide?> getEpg() async {
    if (epgLink == null) {
      return null;
    }

    final response = await dio.getUri(epgLink!);
    if (response.statusCode == 200) {
      final xmlString = response.data;
      final parser = EpgParser();
      return parser.parse(xmlString);
    }

    return null;
  }
}
