import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../blocs/settings/iptv_provider.dart';
import 'xmltv_base_repository.dart';

class XmltvRepository extends XmltvBaseRepository {
  final EpgIptvProvider provider;
  final Dio dio;

  final List<XtXmltvEvent> entries = [];

  XmltvRepository({required this.provider, required this.dio});

  @override
  Future<void> load() async {
    final value = await dio.getUri<String>(provider.url);
    final xmltvData = parseXmltv(Stream.value(utf8.encode(value.data!)));
    entries.addAll(await xmltvData.toList());
  }

  @override
  Future<List<XtXmltvEvent>> getXmltv() async {
    return entries;
  }
}
