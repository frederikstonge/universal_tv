import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

class M3uClient {
  final Uri m3ulink;

  final Dio dio = Dio();

  M3uClient({required this.m3ulink});

  Future<List<XtM3uEntry>> getAllStreams() async {
    try {
      final response = await dio.getUri(m3ulink);
      if (response.statusCode == 200) {
        final m3uData = parseM3u(Stream.value(utf8.encode(response.data)));
        return await m3uData.toList();
      }
    } catch (_) {}
    return [];
  }
}
