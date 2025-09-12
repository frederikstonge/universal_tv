import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';
import 'package:reaxdb_dart/reaxdb_dart.dart';

import '../blocs/settings/iptv_provider.dart';
import '../models/xmltv_base.dart';
import '../models/xmltv_channel.dart';
import '../models/xmltv_programme.dart';
import 'xmltv_base_repository.dart';

class XmltvRepository extends XmltvBaseRepository {
  final XmltvIptvProvider provider;
  final Dio dio;
  final SimpleReaxDB db;

  XmltvRepository({required this.provider, required this.dio, required this.db});

  @override
  String get name => provider.name;

  @override
  Future<void> load() async {
    final value = await dio.getUri<String>(provider.url);
    final xmltvDataStream = parseXmltv(Stream.value(utf8.encode(value.data!)));
    final xmltvData = await xmltvDataStream.toList();

    final channels = xmltvData
        .whereType<XtXmltvChannel>()
        .map((e) => XmltvChannel.fromXtXmltvChannel(e, provider.name))
        .toList();

    final programmes = xmltvData
        .whereType<XtXmltvProgramme>()
        .map((e) => XmltvProgramme.fromXtXmltvProgramme(e, provider.name))
        .toList();

    final List<XmltvBase> data = [...channels, ...programmes];

    await db.putAll(data.asMap().map((k, v) => MapEntry('xmltv_${provider.name}:$k', v.toMap())));
  }

  @override
  Future<void> dispose() async {
    final keys = await db.query('xmltv_${provider.name}:*');
    for (final key in keys) {
      await db.delete(key);
    }
  }

  @override
  Future<List<XmltvBase>> getXmltv() async {
    final items = await db.getAll('xmltv:${provider.name}:*');
    return items.entries.map((e) => XmltvBaseMapper.fromMap(e.value)).toList();
  }

  @override
  Future<List<XmltvProgramme>> getShortEpg() async {
    final items = await db.advanced.collection('xmltv:${provider.name}').whereEquals('type', 'programme').find();
    return items.map((e) => XmltvProgrammeMapper.fromMap(e)).toList();
  }

  @override
  Future<bool> supportsShortEpg() async {
    return true;
  }

  @override
  Future<bool> supportsXmltv() async {
    return true;
  }
}
