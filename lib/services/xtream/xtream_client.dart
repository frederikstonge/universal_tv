import 'dart:convert';

import 'package:dio/dio.dart';

import '../epg/epg_parser.dart';
import '../epg/models/electronic_program_guide.dart';
import 'exception/xtream_client_exception.dart';
import 'model/category.dart';
import 'model/channel_epg.dart';
import 'model/channel_epg_table.dart';
import 'model/general_information.dart';
import 'model/live_stream_item.dart';
import 'model/series_info.dart';
import 'model/series_item.dart';
import 'model/vod_info.dart';
import 'model/vod_item.dart';

/// https://github.com/engenex/xtream-codes-api-v2
class XtreamClient {
  /// protocol, host, port and path are important
  final Uri baseUrl;
  final String username;
  final String password;

  final Dio dio = Dio();

  XtreamClient({required this.baseUrl, required this.username, required this.password});

  Future<ElectronicProgramGuide?> getEpg() async {
    final response = await dio.getUri(createEpgUrl());
    if (response.statusCode == 200) {
      final xmlString = response.data;
      final parser = EpgParser();
      return parser.parse(xmlString);
    } else {
      throw XTreamClientException(
        'Failed to fetch XMLTV data. Server responded with status code ${response.statusCode}.',
      );
    }
  }

  /// Authenticates the user and retrieves server & user information.
  Future<GeneralInformation> serverInformation() async {
    final response = await dio.getUri(createBaseUrl());

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return GeneralInformationMapper.fromMap(parsed);
    } else {
      throw XTreamClientException('''
        Failed to retrieve GeneralInformation. Server responded with 
        the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves live stream categories.
  Future<List<Category>> liveStreamCategories() async {
    const action = 'get_live_categories';
    return _categories(action);
  }

  /// Retrieves VOD categories.
  Future<List<Category>> vodCategories() async {
    const action = 'get_vod_categories';
    return _categories(action);
  }

  /// Retrieves series categories.
  Future<List<Category>> seriesCategories() async {
    const action = 'get_series_categories';
    return _categories(action);
  }

  /// Retrieves live stream items based on the optional category parameter.
  Future<List<LiveStreamItem>> livestreamItems({Category? category}) async {
    var action = 'get_live_streams';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<LiveStreamItem>(LiveStreamItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamClientException('''
        Failed to retrieve LiveStreams from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves VOD items based on the optional category parameter.
  Future<List<VodItem>> vodItems({Category? category}) async {
    var action = 'get_vod_streams';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<VodItem>(VodItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamClientException('''
        Failed to retrieve Vods from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves information about a specific VOD item.
  Future<VodInfo> vodInfo(VodItem vod) async {
    final action = 'get_vod_info&vod_id=${vod.streamId}';
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return VodInfoMapper.fromMap(parsed);
    } else {
      throw XTreamClientException('''
        Failed to retrieve VOD Info from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves series items based on the optional category parameter.
  Future<List<SeriesItem>> seriesItems({Category? category}) async {
    var action = 'get_series';
    if (category != null) {
      action = '$action&category_id=${category.categoryId}';
    }
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<SeriesItem>(SeriesItemMapper.fromMap)
          .toList();
    } else {
      throw XTreamClientException('''
        Failed to retrieve Series from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves information about a specific series item.
  Future<SeriesInfo> seriesInfo(SeriesItem series) async {
    final action = 'get_series_info&series_id=${series.seriesId}';
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return SeriesInfoMapper.fromMap(parsed);
    } else {
      throw XTreamClientException('''
        Failed to retrieve Series Info from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves EPG information for a specific live stream item.
  Future<ChannelEpg> channelEpg(LiveStreamItem item, int? limit) async {
    return channelEpgViaStreamId(item.streamId!, limit);
  }

  /// Retrieves EPG information for a specific live stream item.
  Future<ChannelEpg> channelEpgViaStreamId(int streamId, int? limit) async {
    var action = 'get_short_epg&stream_id=$streamId';
    if (limit != null) {
      action = '$action&limit=$limit';
    }
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return ChannelEpgMapper.fromMap(parsed);
    } else {
      throw XTreamClientException('''
        Failed to retrieve EPG from action $action for channel_id $streamId
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Retrieves EPG table for a specific live stream item.
  Future<ChannelEpgTable> channelEpgTable(LiveStreamItem item) async {
    final action = 'get_simple_data_table&stream_id=${item.streamId}';
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data) as Map<String, dynamic>;
      return ChannelEpgTableMapper.fromMap(parsed);
    } else {
      throw XTreamClientException('''
        Failed to retrieve EPG Table from action $action for channel_id ${item.streamId}
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  /// Common method for retrieving categories based on the given action.
  Future<List<Category>> _categories(String action) async {
    final response = await dio.getUri(createBaseUrl(queryParameters: {'action': action}));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.data);
      return (parsed is List ? parsed : <dynamic>[])
          .cast<Map<String, dynamic>>()
          .map<Category>(CategoryMapper.fromMap)
          .toList();
    } else {
      throw XTreamClientException('''
        Failed to retrieve Categories from action $action.
        Server responded with the error code ${response.statusCode}.
        ''');
    }
  }

  Uri createStreamUrl(int id, {String inputFormat = 'ts'}) {
    final newUri = Uri.parse(baseUrl.toString());
    // TODO: Remove live if not working
    newUri.pathSegments.addAll({'live', username, password, '$id.$inputFormat'});

    return newUri;
  }

  Uri createMovieUrl(int id, String inputFormat) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'movie', username, password, '$id.$inputFormat'});

    return newUri;
  }

  Uri createSeriesUrl(int id, String inputFormat) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'series', username, password, '$id.$inputFormat'});

    return newUri;
  }

  Uri createBaseUrl({Map<String, String>? queryParameters}) {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'player_api.php'});
    newUri.queryParameters.addAll({'username': username, 'password': password, ...?queryParameters});

    return newUri;
  }

  Uri createEpgUrl() {
    final newUri = Uri.parse(baseUrl.toString());
    newUri.pathSegments.addAll({'xmltv.php'});
    newUri.queryParameters.addAll({'username': username, 'password': password});

    return newUri;
  }
}
