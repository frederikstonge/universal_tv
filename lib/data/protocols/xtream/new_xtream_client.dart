import 'dart:convert';

import 'package:dio/dio.dart';

import '../../base_iptv_client.dart';
import '../../epg_parser.dart';
import '../../iptv_data_type.dart';
import '../../models/epg/epg.dart';
import 'exception/xtream_code_client_exception.dart';
import 'model/category.dart';
import 'model/channel_epg.dart';
import 'model/channel_epg_table.dart';
import 'model/general_information.dart';
import 'model/live_stream_items.dart';
import 'model/series_info.dart';
import 'model/series_items.dart';
import 'model/vod_info.dart';
import 'model/vod_items.dart';

/// https://github.com/engenex/xtream-codes-api-v2
class NewXtreamClient extends BaseIptvClient {
  /// protocol, host, port and path are important
  final Uri baseUrl;
  final String username;
  final String password;

  final Dio dio = Dio();

  NewXtreamClient({required this.baseUrl, required this.username, required this.password});

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
    final response = await dio.getUri(_createEpgUrl());
    if (response.statusCode == 200) {
      final xmlString = response.data;
      final parser = EpgParser();
      return parser.parse(xmlString);
    } else {
      throw XTreamCodeClientException(
        'Failed to fetch XMLTV data. Server responded with status code ${response.statusCode}.',
      );
    }
  }

  /// Authenticates the user and retrieves server & user information.
  Future<XTremeCodeGeneralInformation> serverInformation() async {
    final response = await dio.getUri(_createBaseUrl());

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return XTremeCodeGeneralInformationMapper.fromMap(parsed);
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve GeneralInformation. Server responded with 
        the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves live stream categories.
  Future<List<XTremeCodeCategory>> liveStreamCategories() async {
    const action = 'get_live_categories';
    return _categories(action);
  }

  /// Retrieves VOD categories.
  Future<List<XTremeCodeCategory>> vodCategories() async {
    const action = 'get_vod_categories';
    return _categories(action);
  }

  /// Retrieves series categories.
  Future<List<XTremeCodeCategory>> seriesCategories() async {
    const action = 'get_series_categories';
    return _categories(action);
  }

  /// Retrieves live stream items based on the optional category parameter.
  Future<List<XTremeCodeLiveStreamItem>> livestreamItems({XTremeCodeCategory? category}) async {
    var action = 'get_live_streams';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<XTremeCodeLiveStreamItem>(XTremeCodeLiveStreamItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve LiveStreams from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves VOD items based on the optional category parameter.
  Future<List<XTremeCodeVodItem>> vodItems({XTremeCodeCategory? category}) async {
    var action = 'get_vod_streams';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<XTremeCodeVodItem>(XTremeCodeVodItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve Vods from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves information about a specific VOD item.
  Future<XTremeCodeVodInfo> vodInfo(XTremeCodeVodItem vod) async {
    final action = 'get_vod_info&vod_id=${vod.streamId}';
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return XTremeCodeVodInfoMapper.fromMap(parsed);
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve VOD Info from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves series items based on the optional category parameter.
  Future<List<XTremeCodeSeriesItem>> seriesItems({XTremeCodeCategory? category}) async {
    var action = 'get_series';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<XTremeCodeSeriesItem>(XTremeCodeSeriesItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve Series from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves information about a specific series item.
  Future<XTremeCodeSeriesInfo> seriesInfo(XTremeCodeSeriesItem series) async {
    final action = 'get_series_info&series_id=${series.seriesId}';
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return XTremeCodeSeriesInfoMapper.fromMap(parsed);
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve Series Info from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves EPG information for a specific live stream item.
  Future<XTremeCodeChannelEpg> channelEpg(XTremeCodeLiveStreamItem item, int? limit) async {
    return channelEpgViaStreamId(item.streamId!, limit);
  }

  /// Retrieves EPG information for a specific live stream item.
  Future<XTremeCodeChannelEpg> channelEpgViaStreamId(int streamId, int? limit) async {
    var action = 'get_short_epg&stream_id=$streamId';
    if (limit != null) {
      action = '$action&limit=$limit';
    }
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return XTremeCodeChannelEpgMapper.fromMap(parsed);
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve EPG from action $action for channel_id $streamId
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves EPG table for a specific live stream item.
  Future<XTremeCodeChannelEpgTable> channelEpgTable(XTremeCodeLiveStreamItem item) async {
    final action = 'get_simple_data_table&stream_id=${item.streamId}';
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return XTremeCodeChannelEpgTableMapper.fromMap(parsed);
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve EPG Table from action $action for channel_id ${item.streamId}
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Common method for retrieving categories based on the given action.
  Future<List<XTremeCodeCategory>> _categories(String action) async {
    final response = await dio.getUri(_createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<XTremeCodeCategory>(XTremeCodeCategoryMapper.fromMap)
          .toList();
    } else {
      throw XTreamCodeClientException('''
        Failed to retrieve Categories from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  Uri createStreamUrl(int id, {List<String> allowedInputFormat = const ['ts']}) {
    final newUri = Uri.parse(baseUrl.toString());
    // TODO: Remove live if not working
    newUri.pathSegments.addAll({
      'live',
      username,
      password,
      '$id.${allowedInputFormat.firstWhere((format) => format == 'ts', orElse: () => allowedInputFormat.first)}',
    });

    return newUri;
  }

  Uri createMovieUrl(int id, String containerExtension) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'movie', username, password, '$id.$containerExtension'});

    return newUri;
  }

  Uri createSeriesUrl(int id, String containerExtension) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'series', username, password, '$id.$containerExtension'});

    return newUri;
  }

  Uri _createBaseUrl({Map<String, String>? queryParameters}) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'player_api.php'});
    newUri.queryParameters.addAll({'username': username, 'password': password, ...?queryParameters});

    return newUri;
  }

  Uri _createEpgUrl() {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'xmltv.php'});
    newUri.queryParameters.addAll({'username': username, 'password': password});

    return newUri;
  }
}
