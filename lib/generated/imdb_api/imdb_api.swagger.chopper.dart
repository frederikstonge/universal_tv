// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imdb_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ImdbApi extends ImdbApi {
  _$ImdbApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ImdbApi;

  @override
  Future<Response<ImdbapiListTitlesResponse>> _titlesGet({
    List<Object?>? types,
    List<String>? genres,
    List<String>? countryCodes,
    List<String>? languageCodes,
    List<String>? nameIds,
    List<String>? interestIds,
    int? startYear,
    int? endYear,
    int? minVoteCount,
    int? maxVoteCount,
    num? minAggregateRating,
    num? maxAggregateRating,
    String? sortBy,
    String? sortOrder,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles');
    final Map<String, dynamic> $params = <String, dynamic>{
      'types': types,
      'genres': genres,
      'countryCodes': countryCodes,
      'languageCodes': languageCodes,
      'nameIds': nameIds,
      'interestIds': interestIds,
      'startYear': startYear,
      'endYear': endYear,
      'minVoteCount': minVoteCount,
      'maxVoteCount': maxVoteCount,
      'minAggregateRating': minAggregateRating,
      'maxAggregateRating': maxAggregateRating,
      'sortBy': sortBy,
      'sortOrder': sortOrder,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ImdbapiListTitlesResponse, ImdbapiListTitlesResponse>(
      $request,
    );
  }

  @override
  Future<Response<ImdbapiTitle>> _titlesTitleIdGet({required String? titleId}) {
    final Uri $url = Uri.parse('/titles/${titleId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ImdbapiTitle, ImdbapiTitle>($request);
  }

  @override
  Future<Response<ImdbapiBatchGetTitlesResponse>> _titlesBatchGetGet({
    required List<String>? titleIds,
  }) {
    final Uri $url = Uri.parse('/titles:batchGet');
    final Map<String, dynamic> $params = <String, dynamic>{
      'titleIds': titleIds,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiBatchGetTitlesResponse, ImdbapiBatchGetTitlesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleCreditsResponse>> _titlesTitleIdCreditsGet({
    required String? titleId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/credits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'categories': categories,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiListTitleCreditsResponse, ImdbapiListTitleCreditsResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleReleaseDatesResponse>>
  _titlesTitleIdReleaseDatesGet({required String? titleId}) {
    final Uri $url = Uri.parse('/titles/${titleId}/releaseDates');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      ImdbapiListTitleReleaseDatesResponse,
      ImdbapiListTitleReleaseDatesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleAKAsResponse>> _titlesTitleIdAkasGet({
    required String? titleId,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/akas');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ImdbapiListTitleAKAsResponse, ImdbapiListTitleAKAsResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleSeasonsResponse>> _titlesTitleIdSeasonsGet({
    required String? titleId,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/seasons');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client
        .send<ImdbapiListTitleSeasonsResponse, ImdbapiListTitleSeasonsResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleEpisodesResponse>> _titlesTitleIdEpisodesGet({
    required String? titleId,
    String? season,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/episodes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'season': season,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      ImdbapiListTitleEpisodesResponse,
      ImdbapiListTitleEpisodesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleImagesResponse>> _titlesTitleIdImagesGet({
    required String? titleId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'types': types,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiListTitleImagesResponse, ImdbapiListTitleImagesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleVideosResponse>> _titlesTitleIdVideosGet({
    required String? titleId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/videos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'types': types,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiListTitleVideosResponse, ImdbapiListTitleVideosResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleAwardNominationsResponse>>
  _titlesTitleIdAwardNominationsGet({
    required String? titleId,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/awardNominations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      ImdbapiListTitleAwardNominationsResponse,
      ImdbapiListTitleAwardNominationsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleParentsGuideResponse>>
  _titlesTitleIdParentsGuideGet({required String? titleId}) {
    final Uri $url = Uri.parse('/titles/${titleId}/parentsGuide');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      ImdbapiListTitleParentsGuideResponse,
      ImdbapiListTitleParentsGuideResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleCertificatesResponse>>
  _titlesTitleIdCertificatesGet({required String? titleId}) {
    final Uri $url = Uri.parse('/titles/${titleId}/certificates');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      ImdbapiListTitleCertificatesResponse,
      ImdbapiListTitleCertificatesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleCompanyCreditsResponse>>
  _titlesTitleIdCompanyCreditsGet({
    required String? titleId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/companyCredits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'categories': categories,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      ImdbapiListTitleCompanyCreditsResponse,
      ImdbapiListTitleCompanyCreditsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiBoxOffice>> _titlesTitleIdBoxOfficeGet({
    required String? titleId,
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/boxOffice');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ImdbapiBoxOffice, ImdbapiBoxOffice>($request);
  }

  @override
  Future<Response<ImdbapiSearchTitlesResponse>> _searchTitlesGet({
    required String? query,
    int? limit,
  }) {
    final Uri $url = Uri.parse('/search/titles');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiSearchTitlesResponse, ImdbapiSearchTitlesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiName>> _namesNameIdGet({required String? nameId}) {
    final Uri $url = Uri.parse('/names/${nameId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ImdbapiName, ImdbapiName>($request);
  }

  @override
  Future<Response<ImdbapiListNameImagesResponse>> _namesNameIdImagesGet({
    required String? nameId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/names/${nameId}/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'types': types,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiListNameImagesResponse, ImdbapiListNameImagesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListNameFilmographyResponse>>
  _namesNameIdFilmographyGet({
    required String? nameId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/names/${nameId}/filmography');
    final Map<String, dynamic> $params = <String, dynamic>{
      'categories': categories,
      'pageSize': pageSize,
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<
      ImdbapiListNameFilmographyResponse,
      ImdbapiListNameFilmographyResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListNameRelationshipsResponse>>
  _namesNameIdRelationshipsGet({required String? nameId}) {
    final Uri $url = Uri.parse('/names/${nameId}/relationships');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      ImdbapiListNameRelationshipsResponse,
      ImdbapiListNameRelationshipsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiBatchGetNamesResponse>> _namesBatchGetGet({
    required List<String>? nameIds,
  }) {
    final Uri $url = Uri.parse('/names:batchGet');
    final Map<String, dynamic> $params = <String, dynamic>{'nameIds': nameIds};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiBatchGetNamesResponse, ImdbapiBatchGetNamesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListStarMetersResponse>> _chartStarmeterGet({
    String? pageToken,
  }) {
    final Uri $url = Uri.parse('/chart/starmeter');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageToken': pageToken,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ImdbapiListStarMetersResponse, ImdbapiListStarMetersResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListListInterestCategoriesResponse>> _interestsGet() {
    final Uri $url = Uri.parse('/interests');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<
      ImdbapiListListInterestCategoriesResponse,
      ImdbapiListListInterestCategoriesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiInterest>> _interestsInterestIdGet({
    required String? interestId,
  }) {
    final Uri $url = Uri.parse('/interests/${interestId}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<ImdbapiInterest, ImdbapiInterest>($request);
  }
}
