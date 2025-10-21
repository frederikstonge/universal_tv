import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

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
  Future<void> load() async {
    final value = await dio.get<String>(provider.url);
    final xmltvDataStream = parseXmltv(Stream.value(utf8.encode(value.data!)));
    final xmltvData = await xmltvDataStream.toList();

    final expiration = DateTime.now().add(provider.epgExpiration);

    final channels = xmltvData
        .whereType<XtXmltvChannel>()
        .map((e) => XmltvChannel.fromXtXmltvChannel(e, provider.name, expiration))
        .toList();

    final programmes = xmltvData
        .whereType<XtXmltvProgramme>()
        .map((e) => XmltvProgramme.fromXtXmltvProgramme(e, provider.name, expiration))
        .toList();

    final List<XmltvBase> data = [...channels, ...programmes];

    _entries.addAll(data);
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
  Future<List<XmltvProgramme>> getShortEpg() async {
    return _entries.whereType<XmltvProgramme>().toList();
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
