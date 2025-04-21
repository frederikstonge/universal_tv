import 'package:dio/dio.dart';

import '../epg/models/electronic_program_guide.dart';
import 'm3u_parser.dart';

/// https://github.com/HamzaBhf00/m3u-tags-iptv
class M3uClient {
  final List<Uri> m3ulinks;
  final List<Uri> epgLink;

  final Dio dio = Dio();

  M3uClient({required this.m3ulinks, this.epgLink = const []});

  Future<List<M3uParser>> getAllStreams() async {
    final List<M3uParser> allStreams = [];
    for (var m3uLink in m3ulinks) {
      try {
        final response = await dio.get(m3uLink.toString());
        if (response.statusCode == 200) {
          final m3uParser = M3uParser(response.data);
          allStreams.add(m3uParser);
        }
      } catch (_) {}
    }
    return allStreams;
  }

  Future<List<ElectronicProgramGuide>> getAllEpg() async {
    final List<ElectronicProgramGuide> allEpg = [];
    for (var epg in epgLink) {
      try {
        final response = await dio.get(epg.toString());
        if (response.statusCode == 200) {
          final epgParser = ElectronicProgramGuide.fromXmlElement(response.data);
          allEpg.add(epgParser);
        }
      } catch (_) {}
    }
    return allEpg;
  }
}
