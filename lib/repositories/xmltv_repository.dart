import 'package:dio/dio.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../blocs/settings/iptv_provider.dart';
import '../models/xmltv_base.dart';
import '../models/xmltv_channel.dart';
import '../models/xmltv_programme.dart';
import 'xmltv_base_repository.dart';

class XmltvRepository extends XmltvBaseRepository {
  final XmltvIptvProvider provider;
  final Dio dio;

  final List<XmltvBase> _entries = [];

  XmltvRepository({required this.provider, required this.dio});

  @override
  String get name => provider.name;

  @override
  Stream<void> load() async* {
    final value = await dio.get<String>(provider.url);
    final parser = EpgParser();
    final xmltvData = parser.parse(value.data!);

    final expiration = DateTime.now().add(provider.epgExpiration);

    final channels = xmltvData.channels
        .map((e) => XmltvChannel.fromXtXmltvChannel(e, provider.name, expiration))
        .toList();

    final programmes = xmltvData.programmes
        .map((e) => XmltvProgramme.fromXtXmltvProgramme(e, provider.name, expiration))
        .toList();

    final List<XmltvBase> data = [...channels, ...programmes];

    _entries.addAll(data);
    yield null;
  }

  @override
  Future<void> dispose() async {
    _entries.clear();
  }

  @override
  Future<List<XmltvBase>> getXmltv() async {
    return _entries;
  }

  @override
  Future<List<XmltvProgramme>> getShortEpg({String? channelId}) async {
    return _entries.whereType<XmltvProgramme>().where((e) => channelId == null || e.channelId == channelId).toList();
  }
}
