// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve a list of titles with optional filters.',
      summary: 'List titles',
      operationId: 'IMDbAPIService_ListTitles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client.send<ImdbapiListTitlesResponse, ImdbapiListTitlesResponse>(
      $request,
    );
  }

  @override
  Future<Response<ImdbapiTitle>> _titlesTitleIdGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve a title\'s details using its IMDb ID.',
      summary: 'Get title by ID',
      operationId: 'IMDbAPIService_GetTitle',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ImdbapiTitle, ImdbapiTitle>($request);
  }

  @override
  Future<Response<ImdbapiBatchGetTitlesResponse>> _titlesBatchGetGet({
    required List<String>? titleIds,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve details of multiple titles using their IMDb IDs.',
      summary: 'Batch get titles by IDs',
      operationId: 'IMDbAPIService_BatchGetTitles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the credits associated with a specific title.',
      summary: 'List credits for a title',
      operationId: 'IMDbAPIService_ListTitleCredits',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client
        .send<ImdbapiListTitleCreditsResponse, ImdbapiListTitleCreditsResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleReleaseDatesResponse>>
  _titlesTitleIdReleaseDatesGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the release dates associated with a specific title.',
      summary: 'List release dates for a title',
      operationId: 'IMDbAPIService_ListTitleReleaseDates',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/releaseDates');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListTitleReleaseDatesResponse,
      ImdbapiListTitleReleaseDatesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleAKAsResponse>> _titlesTitleIdAkasGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the alternative titles (AKAs) associated with a specific title.',
      summary: 'List AKAs for a title',
      operationId: 'IMDbAPIService_ListTitleAKAs',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/akas');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<ImdbapiListTitleAKAsResponse, ImdbapiListTitleAKAsResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListTitleSeasonsResponse>> _titlesTitleIdSeasonsGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the seasons associated with a specific title.',
      summary: 'List seasons for a title',
      operationId: 'IMDbAPIService_ListTitleSeasons',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/seasons');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the episodes associated with a specific title.',
      summary: 'List episodes for a title',
      operationId: 'IMDbAPIService_ListTitleEpisodes',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the images associated with a specific title.',
      summary: 'List images for a title',
      operationId: 'IMDbAPIService_ListTitleImages',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the videos associated with a specific title.',
      summary: 'List videos for a title',
      operationId: 'IMDbAPIService_ListTitleVideos',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the award nominations associated with a specific title.',
      summary: 'List award nominations for a title',
      operationId: 'IMDbAPIService_ListTitleAwardNominations',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListTitleAwardNominationsResponse,
      ImdbapiListTitleAwardNominationsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleParentsGuideResponse>>
  _titlesTitleIdParentsGuideGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the parents guide associated with a specific title.',
      summary: 'List parents guide for a title',
      operationId: 'IMDbAPIService_ListTitleParentsGuide',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/parentsGuide');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListTitleParentsGuideResponse,
      ImdbapiListTitleParentsGuideResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListTitleCertificatesResponse>>
  _titlesTitleIdCertificatesGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the certificates associated with a specific title.',
      summary: 'List certificates for a title',
      operationId: 'IMDbAPIService_ListTitleCertificates',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/certificates');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the company credits associated with a specific title.',
      summary: 'List company credits for a title',
      operationId: 'IMDbAPIService_ListTitleCompanyCredits',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListTitleCompanyCreditsResponse,
      ImdbapiListTitleCompanyCreditsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiBoxOffice>> _titlesTitleIdBoxOfficeGet({
    required String? titleId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the box office information associated with a specific title.',
      summary: 'Get box office information for a title',
      operationId: 'IMDbAPIService_GetTitleBoxOffice',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/titles/${titleId}/boxOffice');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ImdbapiBoxOffice, ImdbapiBoxOffice>($request);
  }

  @override
  Future<Response<ImdbapiSearchTitlesResponse>> _searchTitlesGet({
    required String? query,
    int? limit,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Search for titles using a query string.',
      summary: 'Search titles by query',
      operationId: 'IMDbAPIService_SearchTitles',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Title"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client
        .send<ImdbapiSearchTitlesResponse, ImdbapiSearchTitlesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiName>> _namesNameIdGet({
    required String? nameId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve a name\'s details using its IMDb ID.',
      summary: 'Get name by ID',
      operationId: 'IMDbAPIService_GetName',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/names/${nameId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ImdbapiName, ImdbapiName>($request);
  }

  @override
  Future<Response<ImdbapiListNameImagesResponse>> _namesNameIdImagesGet({
    required String? nameId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the images associated with a specific name.',
      summary: 'List images for a name',
      operationId: 'IMDbAPIService_ListNameImages',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
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
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the filmography associated with a specific name.',
      summary: 'List filmography for a name',
      operationId: 'IMDbAPIService_ListNameFilmography',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListNameFilmographyResponse,
      ImdbapiListNameFilmographyResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiListNameRelationshipsResponse>>
  _namesNameIdRelationshipsGet({
    required String? nameId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve the relationships associated with a specific name.',
      summary: 'List relationships for a name',
      operationId: 'IMDbAPIService_ListNameRelationships',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/names/${nameId}/relationships');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListNameRelationshipsResponse,
      ImdbapiListNameRelationshipsResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiBatchGetNamesResponse>> _namesBatchGetGet({
    required List<String>? nameIds,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve details of multiple names using their IMDb IDs.',
      summary: 'Batch get names by IDs',
      operationId: 'IMDbAPIService_BatchGetNames',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/names:batchGet');
    final Map<String, dynamic> $params = <String, dynamic>{'nameIds': nameIds};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<ImdbapiBatchGetNamesResponse, ImdbapiBatchGetNamesResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListStarMetersResponse>> _chartStarmeterGet({
    String? pageToken,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve the star meter rankings for names.',
      summary: 'List star meter rankings',
      operationId: 'IMDbAPIService_ListStarMeters',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Name"],
      deprecated: false,
    ),
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
      tag: swaggerMetaData,
    );
    return client
        .send<ImdbapiListStarMetersResponse, ImdbapiListStarMetersResponse>(
          $request,
        );
  }

  @override
  Future<Response<ImdbapiListListInterestCategoriesResponse>> _interestsGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          'Retrieve all interest categories available in the IMDb API.',
      summary: 'List interest categories',
      operationId: 'IMDbAPIService_ListInterestCategories',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Interest"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/interests');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      ImdbapiListListInterestCategoriesResponse,
      ImdbapiListListInterestCategoriesResponse
    >($request);
  }

  @override
  Future<Response<ImdbapiInterest>> _interestsInterestIdGet({
    required String? interestId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: 'Retrieve details of a specific interest using its ID.',
      summary: 'Get interest by ID',
      operationId: 'IMDbAPIService_GetInterest',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Interest"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/interests/${interestId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ImdbapiInterest, ImdbapiInterest>($request);
  }
}
