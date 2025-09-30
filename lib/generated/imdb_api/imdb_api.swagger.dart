// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'imdb_api.enums.swagger.dart' as enums;
import 'imdb_api.metadata.swagger.dart';
export 'imdb_api.enums.swagger.dart';

part 'imdb_api.swagger.chopper.dart';
part 'imdb_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ImdbApi extends ChopperService {
  static ImdbApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$ImdbApi(client);
    }

    final newClient = ChopperClient(
      services: [_$ImdbApi()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://api.imdbapi.dev'),
    );
    return _$ImdbApi(newClient);
  }

  ///List titles
  ///@param types Optional. The type of titles to filter by. If not specified, all types are returned.   - MOVIE: Represents a movie title.  - TV_SERIES: Represents a TV series title.  - TV_MINI_SERIES: Represents a TV mini-series title.  - TV_SPECIAL: Represents a TV special title.  - TV_MOVIE: Represents a TV movie title.  - SHORT: Represents a short title.  - VIDEO: Represents a video title.  - VIDEO_GAME: Represents a video game title.
  ///@param genres Optional. The genres to filter titles by. If not specified, titles from all genres are returned.
  ///@param countryCodes Optional. The ISO 3166-1 alpha-2 country codes to filter titles by. If not specified, titles from all countries are returned. Example: "US" for United States, "GB" for United Kingdom.
  ///@param languageCodes Optional. The ISO 639-1 or ISO 639-2 language codes to filter titles by. If not specified, titles in all languages are returned.
  ///@param nameIds Optional. The IDs of names to filter titles by.
  ///@param interestIds Optional. The IDs of interests to filter titles by. If not specified, titles associated with all interests are returned.
  ///@param startYear Optional. The start year for filtering titles.
  ///@param endYear Optional. The end year for filtering titles.
  ///@param minVoteCount Optional. The minimum number of votes a title must have to be included. If not specified, titles with any number of votes are included. The value must be between 0 and 1,000,000,000. Default is 0.
  ///@param maxVoteCount Optional. The maximum number of votes a title can have to be included. If not specified, titles with any number of votes are included. The value must be between 0 and 1,000,000,000.
  ///@param minAggregateRating Optional. The minimum rating a title must have to be included. If not specified, titles with any rating are included. The value must be between 0.0 and 10.0.
  ///@param maxAggregateRating Optional. The maximum rating a title can have to be included. If not specified, titles with any rating are included. The value must be between 0.0 and 10.0.
  ///@param sortBy Optional. The sorting order for the titles. If not specified, titles are sorted by popularity.   - SORT_BY_POPULARITY: Sort by popularity. This is used to rank titles based on their popularity, which can be influenced by various factors such as viewership, ratings, and cultural impact.  - SORT_BY_RELEASE_DATE: Sort by release date. This is used to rank titles based on their release dates, with newer titles typically appearing before older ones.  - SORT_BY_USER_RATING: Sort by user rating. This is used to rank titles based on the average user rating, which reflects the overall audience reception.  - SORT_BY_USER_RATING_COUNT: Sort by user rating count. This is used to rank titles based on the number of user ratings they have received, which can indicate the level of engagement or popularity among viewers.  - SORT_BY_YEAR: Sort by year. This is used to rank titles based on their release year, with newer titles typically appearing before older ones.
  ///@param sortOrder Optional. The sorting order for the titles. If not specified, titles are sorted in ascending order.   - ASC: Sort in ascending order.  - DESC: Sort in descending order.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitlesResponse>> titlesGet({
    List<enums.TitlesGetTypes>? types,
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
    enums.TitlesGetSortBy? sortBy,
    enums.TitlesGetSortOrder? sortOrder,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitlesResponse,
      () => ImdbapiListTitlesResponse.fromJsonFactory,
    );

    return _titlesGet(
      types: titlesGetTypesListToJson(types),
      genres: genres,
      countryCodes: countryCodes,
      languageCodes: languageCodes,
      nameIds: nameIds,
      interestIds: interestIds,
      startYear: startYear,
      endYear: endYear,
      minVoteCount: minVoteCount,
      maxVoteCount: maxVoteCount,
      minAggregateRating: minAggregateRating,
      maxAggregateRating: maxAggregateRating,
      sortBy: sortBy?.value?.toString(),
      sortOrder: sortOrder?.value?.toString(),
      pageToken: pageToken,
    );
  }

  ///List titles
  ///@param types Optional. The type of titles to filter by. If not specified, all types are returned.   - MOVIE: Represents a movie title.  - TV_SERIES: Represents a TV series title.  - TV_MINI_SERIES: Represents a TV mini-series title.  - TV_SPECIAL: Represents a TV special title.  - TV_MOVIE: Represents a TV movie title.  - SHORT: Represents a short title.  - VIDEO: Represents a video title.  - VIDEO_GAME: Represents a video game title.
  ///@param genres Optional. The genres to filter titles by. If not specified, titles from all genres are returned.
  ///@param countryCodes Optional. The ISO 3166-1 alpha-2 country codes to filter titles by. If not specified, titles from all countries are returned. Example: "US" for United States, "GB" for United Kingdom.
  ///@param languageCodes Optional. The ISO 639-1 or ISO 639-2 language codes to filter titles by. If not specified, titles in all languages are returned.
  ///@param nameIds Optional. The IDs of names to filter titles by.
  ///@param interestIds Optional. The IDs of interests to filter titles by. If not specified, titles associated with all interests are returned.
  ///@param startYear Optional. The start year for filtering titles.
  ///@param endYear Optional. The end year for filtering titles.
  ///@param minVoteCount Optional. The minimum number of votes a title must have to be included. If not specified, titles with any number of votes are included. The value must be between 0 and 1,000,000,000. Default is 0.
  ///@param maxVoteCount Optional. The maximum number of votes a title can have to be included. If not specified, titles with any number of votes are included. The value must be between 0 and 1,000,000,000.
  ///@param minAggregateRating Optional. The minimum rating a title must have to be included. If not specified, titles with any rating are included. The value must be between 0.0 and 10.0.
  ///@param maxAggregateRating Optional. The maximum rating a title can have to be included. If not specified, titles with any rating are included. The value must be between 0.0 and 10.0.
  ///@param sortBy Optional. The sorting order for the titles. If not specified, titles are sorted by popularity.   - SORT_BY_POPULARITY: Sort by popularity. This is used to rank titles based on their popularity, which can be influenced by various factors such as viewership, ratings, and cultural impact.  - SORT_BY_RELEASE_DATE: Sort by release date. This is used to rank titles based on their release dates, with newer titles typically appearing before older ones.  - SORT_BY_USER_RATING: Sort by user rating. This is used to rank titles based on the average user rating, which reflects the overall audience reception.  - SORT_BY_USER_RATING_COUNT: Sort by user rating count. This is used to rank titles based on the number of user ratings they have received, which can indicate the level of engagement or popularity among viewers.  - SORT_BY_YEAR: Sort by year. This is used to rank titles based on their release year, with newer titles typically appearing before older ones.
  ///@param sortOrder Optional. The sorting order for the titles. If not specified, titles are sorted in ascending order.   - ASC: Sort in ascending order.  - DESC: Sort in descending order.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles')
  Future<chopper.Response<ImdbapiListTitlesResponse>> _titlesGet({
    @Query('types') List<Object?>? types,
    @Query('genres') List<String>? genres,
    @Query('countryCodes') List<String>? countryCodes,
    @Query('languageCodes') List<String>? languageCodes,
    @Query('nameIds') List<String>? nameIds,
    @Query('interestIds') List<String>? interestIds,
    @Query('startYear') int? startYear,
    @Query('endYear') int? endYear,
    @Query('minVoteCount') int? minVoteCount,
    @Query('maxVoteCount') int? maxVoteCount,
    @Query('minAggregateRating') num? minAggregateRating,
    @Query('maxAggregateRating') num? maxAggregateRating,
    @Query('sortBy') String? sortBy,
    @Query('sortOrder') String? sortOrder,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///Get title by ID
  ///@param titleId The IMDb title ID in the format 'tt1234567'.
  Future<chopper.Response<ImdbapiTitle>> titlesTitleIdGet({
    required String? titleId,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiTitle,
      () => ImdbapiTitle.fromJsonFactory,
    );

    return _titlesTitleIdGet(titleId: titleId);
  }

  ///Get title by ID
  ///@param titleId The IMDb title ID in the format 'tt1234567'.
  @GET(path: '/titles/{titleId}')
  Future<chopper.Response<ImdbapiTitle>> _titlesTitleIdGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///Batch get titles by IDs
  ///@param titleIds List of IMDb title IDs. Maximum 5 IDs.
  Future<chopper.Response<ImdbapiBatchGetTitlesResponse>> titlesBatchGetGet({
    required List<String>? titleIds,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiBatchGetTitlesResponse,
      () => ImdbapiBatchGetTitlesResponse.fromJsonFactory,
    );

    return _titlesBatchGetGet(titleIds: titleIds);
  }

  ///Batch get titles by IDs
  ///@param titleIds List of IMDb title IDs. Maximum 5 IDs.
  @GET(path: '/titles:batchGet')
  Future<chopper.Response<ImdbapiBatchGetTitlesResponse>> _titlesBatchGetGet({
    @Query('titleIds') required List<String>? titleIds,
    @chopper.Tag()
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
  });

  ///List credits for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param categories Optional. The categories of credits to filter by.
  ///@param pageSize Optional. The maximum number of credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleCreditsResponse>>
  titlesTitleIdCreditsGet({
    required String? titleId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleCreditsResponse,
      () => ImdbapiListTitleCreditsResponse.fromJsonFactory,
    );

    return _titlesTitleIdCreditsGet(
      titleId: titleId,
      categories: categories,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List credits for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param categories Optional. The categories of credits to filter by.
  ///@param pageSize Optional. The maximum number of credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/credits')
  Future<chopper.Response<ImdbapiListTitleCreditsResponse>>
  _titlesTitleIdCreditsGet({
    @Path('titleId') required String? titleId,
    @Query('categories') List<String>? categories,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List release dates for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiListTitleReleaseDatesResponse>>
  titlesTitleIdReleaseDatesGet({required String? titleId}) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleReleaseDatesResponse,
      () => ImdbapiListTitleReleaseDatesResponse.fromJsonFactory,
    );

    return _titlesTitleIdReleaseDatesGet(titleId: titleId);
  }

  ///List release dates for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/releaseDates')
  Future<chopper.Response<ImdbapiListTitleReleaseDatesResponse>>
  _titlesTitleIdReleaseDatesGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///List AKAs for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiListTitleAKAsResponse>> titlesTitleIdAkasGet({
    required String? titleId,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleAKAsResponse,
      () => ImdbapiListTitleAKAsResponse.fromJsonFactory,
    );

    return _titlesTitleIdAkasGet(titleId: titleId);
  }

  ///List AKAs for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/akas')
  Future<chopper.Response<ImdbapiListTitleAKAsResponse>> _titlesTitleIdAkasGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///List seasons for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiListTitleSeasonsResponse>>
  titlesTitleIdSeasonsGet({required String? titleId}) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleSeasonsResponse,
      () => ImdbapiListTitleSeasonsResponse.fromJsonFactory,
    );

    return _titlesTitleIdSeasonsGet(titleId: titleId);
  }

  ///List seasons for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/seasons')
  Future<chopper.Response<ImdbapiListTitleSeasonsResponse>>
  _titlesTitleIdSeasonsGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///List episodes for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param season Optional. The season number to filter episodes by.
  ///@param pageSize Optional. The maximum number of episodes to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleEpisodesResponse>>
  titlesTitleIdEpisodesGet({
    required String? titleId,
    String? season,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleEpisodesResponse,
      () => ImdbapiListTitleEpisodesResponse.fromJsonFactory,
    );

    return _titlesTitleIdEpisodesGet(
      titleId: titleId,
      season: season,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List episodes for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param season Optional. The season number to filter episodes by.
  ///@param pageSize Optional. The maximum number of episodes to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/episodes')
  Future<chopper.Response<ImdbapiListTitleEpisodesResponse>>
  _titlesTitleIdEpisodesGet({
    @Path('titleId') required String? titleId,
    @Query('season') String? season,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List images for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param types Optional. The types of images to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of images to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleImagesResponse>>
  titlesTitleIdImagesGet({
    required String? titleId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleImagesResponse,
      () => ImdbapiListTitleImagesResponse.fromJsonFactory,
    );

    return _titlesTitleIdImagesGet(
      titleId: titleId,
      types: types,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List images for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param types Optional. The types of images to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of images to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/images')
  Future<chopper.Response<ImdbapiListTitleImagesResponse>>
  _titlesTitleIdImagesGet({
    @Path('titleId') required String? titleId,
    @Query('types') List<String>? types,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List videos for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param types Optional. The types of videos to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of videos to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleVideosResponse>>
  titlesTitleIdVideosGet({
    required String? titleId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleVideosResponse,
      () => ImdbapiListTitleVideosResponse.fromJsonFactory,
    );

    return _titlesTitleIdVideosGet(
      titleId: titleId,
      types: types,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List videos for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param types Optional. The types of videos to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of videos to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/videos')
  Future<chopper.Response<ImdbapiListTitleVideosResponse>>
  _titlesTitleIdVideosGet({
    @Path('titleId') required String? titleId,
    @Query('types') List<String>? types,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List award nominations for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param pageSize Optional. The maximum number of award nominations to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleAwardNominationsResponse>>
  titlesTitleIdAwardNominationsGet({
    required String? titleId,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleAwardNominationsResponse,
      () => ImdbapiListTitleAwardNominationsResponse.fromJsonFactory,
    );

    return _titlesTitleIdAwardNominationsGet(
      titleId: titleId,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List award nominations for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param pageSize Optional. The maximum number of award nominations to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/awardNominations')
  Future<chopper.Response<ImdbapiListTitleAwardNominationsResponse>>
  _titlesTitleIdAwardNominationsGet({
    @Path('titleId') required String? titleId,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List parents guide for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiListTitleParentsGuideResponse>>
  titlesTitleIdParentsGuideGet({required String? titleId}) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleParentsGuideResponse,
      () => ImdbapiListTitleParentsGuideResponse.fromJsonFactory,
    );

    return _titlesTitleIdParentsGuideGet(titleId: titleId);
  }

  ///List parents guide for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/parentsGuide')
  Future<chopper.Response<ImdbapiListTitleParentsGuideResponse>>
  _titlesTitleIdParentsGuideGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///List certificates for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiListTitleCertificatesResponse>>
  titlesTitleIdCertificatesGet({required String? titleId}) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleCertificatesResponse,
      () => ImdbapiListTitleCertificatesResponse.fromJsonFactory,
    );

    return _titlesTitleIdCertificatesGet(titleId: titleId);
  }

  ///List certificates for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/certificates')
  Future<chopper.Response<ImdbapiListTitleCertificatesResponse>>
  _titlesTitleIdCertificatesGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///List company credits for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param categories Optional. The categories of company credits to filter by.
  ///@param pageSize Optional. The maximum number of company credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListTitleCompanyCreditsResponse>>
  titlesTitleIdCompanyCreditsGet({
    required String? titleId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListTitleCompanyCreditsResponse,
      () => ImdbapiListTitleCompanyCreditsResponse.fromJsonFactory,
    );

    return _titlesTitleIdCompanyCreditsGet(
      titleId: titleId,
      categories: categories,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List company credits for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  ///@param categories Optional. The categories of company credits to filter by.
  ///@param pageSize Optional. The maximum number of company credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/titles/{titleId}/companyCredits')
  Future<chopper.Response<ImdbapiListTitleCompanyCreditsResponse>>
  _titlesTitleIdCompanyCreditsGet({
    @Path('titleId') required String? titleId,
    @Query('categories') List<String>? categories,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///Get box office information for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  Future<chopper.Response<ImdbapiBoxOffice>> titlesTitleIdBoxOfficeGet({
    required String? titleId,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiBoxOffice,
      () => ImdbapiBoxOffice.fromJsonFactory,
    );

    return _titlesTitleIdBoxOfficeGet(titleId: titleId);
  }

  ///Get box office information for a title
  ///@param titleId Required. IMDb title ID in the format "tt1234567".
  @GET(path: '/titles/{titleId}/boxOffice')
  Future<chopper.Response<ImdbapiBoxOffice>> _titlesTitleIdBoxOfficeGet({
    @Path('titleId') required String? titleId,
    @chopper.Tag()
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
  });

  ///Search titles by query
  ///@param query Required. The search query for titles.
  ///@param limit Optional. Limit the number of results returned. Maximum is 50.
  Future<chopper.Response<ImdbapiSearchTitlesResponse>> searchTitlesGet({
    required String? query,
    int? limit,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiSearchTitlesResponse,
      () => ImdbapiSearchTitlesResponse.fromJsonFactory,
    );

    return _searchTitlesGet(query: query, limit: limit);
  }

  ///Search titles by query
  ///@param query Required. The search query for titles.
  ///@param limit Optional. Limit the number of results returned. Maximum is 50.
  @GET(path: '/search/titles')
  Future<chopper.Response<ImdbapiSearchTitlesResponse>> _searchTitlesGet({
    @Query('query') required String? query,
    @Query('limit') int? limit,
    @chopper.Tag()
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
  });

  ///Get name by ID
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  Future<chopper.Response<ImdbapiName>> namesNameIdGet({
    required String? nameId,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiName,
      () => ImdbapiName.fromJsonFactory,
    );

    return _namesNameIdGet(nameId: nameId);
  }

  ///Get name by ID
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  @GET(path: '/names/{nameId}')
  Future<chopper.Response<ImdbapiName>> _namesNameIdGet({
    @Path('nameId') required String? nameId,
    @chopper.Tag()
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
  });

  ///List images for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  ///@param types Optional. The types of images to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of images to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListNameImagesResponse>> namesNameIdImagesGet({
    required String? nameId,
    List<String>? types,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListNameImagesResponse,
      () => ImdbapiListNameImagesResponse.fromJsonFactory,
    );

    return _namesNameIdImagesGet(
      nameId: nameId,
      types: types,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List images for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  ///@param types Optional. The types of images to filter by. If not specified, all types are returned.
  ///@param pageSize Optional. The maximum number of images to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/names/{nameId}/images')
  Future<chopper.Response<ImdbapiListNameImagesResponse>>
  _namesNameIdImagesGet({
    @Path('nameId') required String? nameId,
    @Query('types') List<String>? types,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List filmography for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  ///@param categories Optional. The categories of credits to filter by. If not specified, all categories are returned.
  ///@param pageSize Optional. The maximum number of credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListNameFilmographyResponse>>
  namesNameIdFilmographyGet({
    required String? nameId,
    List<String>? categories,
    int? pageSize,
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListNameFilmographyResponse,
      () => ImdbapiListNameFilmographyResponse.fromJsonFactory,
    );

    return _namesNameIdFilmographyGet(
      nameId: nameId,
      categories: categories,
      pageSize: pageSize,
      pageToken: pageToken,
    );
  }

  ///List filmography for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  ///@param categories Optional. The categories of credits to filter by. If not specified, all categories are returned.
  ///@param pageSize Optional. The maximum number of credits to return per page. If not specified, a default value will be used.  The value must be between 1 and 50. Default is 20.
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/names/{nameId}/filmography')
  Future<chopper.Response<ImdbapiListNameFilmographyResponse>>
  _namesNameIdFilmographyGet({
    @Path('nameId') required String? nameId,
    @Query('categories') List<String>? categories,
    @Query('pageSize') int? pageSize,
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List relationships for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  Future<chopper.Response<ImdbapiListNameRelationshipsResponse>>
  namesNameIdRelationshipsGet({required String? nameId}) {
    generatedMapping.putIfAbsent(
      ImdbapiListNameRelationshipsResponse,
      () => ImdbapiListNameRelationshipsResponse.fromJsonFactory,
    );

    return _namesNameIdRelationshipsGet(nameId: nameId);
  }

  ///List relationships for a name
  ///@param nameId Required. IMDB name ID in the format "nm1234567".
  @GET(path: '/names/{nameId}/relationships')
  Future<chopper.Response<ImdbapiListNameRelationshipsResponse>>
  _namesNameIdRelationshipsGet({
    @Path('nameId') required String? nameId,
    @chopper.Tag()
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
  });

  ///Batch get names by IDs
  ///@param nameIds Required. List of IMDb name IDs in the format "nm1234567". The maximum number of IDs is 5.
  Future<chopper.Response<ImdbapiBatchGetNamesResponse>> namesBatchGetGet({
    required List<String>? nameIds,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiBatchGetNamesResponse,
      () => ImdbapiBatchGetNamesResponse.fromJsonFactory,
    );

    return _namesBatchGetGet(nameIds: nameIds);
  }

  ///Batch get names by IDs
  ///@param nameIds Required. List of IMDb name IDs in the format "nm1234567". The maximum number of IDs is 5.
  @GET(path: '/names:batchGet')
  Future<chopper.Response<ImdbapiBatchGetNamesResponse>> _namesBatchGetGet({
    @Query('nameIds') required List<String>? nameIds,
    @chopper.Tag()
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
  });

  ///List star meter rankings
  ///@param pageToken Optional. Token for pagination, if applicable.
  Future<chopper.Response<ImdbapiListStarMetersResponse>> chartStarmeterGet({
    String? pageToken,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiListStarMetersResponse,
      () => ImdbapiListStarMetersResponse.fromJsonFactory,
    );

    return _chartStarmeterGet(pageToken: pageToken);
  }

  ///List star meter rankings
  ///@param pageToken Optional. Token for pagination, if applicable.
  @GET(path: '/chart/starmeter')
  Future<chopper.Response<ImdbapiListStarMetersResponse>> _chartStarmeterGet({
    @Query('pageToken') String? pageToken,
    @chopper.Tag()
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
  });

  ///List interest categories
  Future<chopper.Response<ImdbapiListListInterestCategoriesResponse>>
  interestsGet() {
    generatedMapping.putIfAbsent(
      ImdbapiListListInterestCategoriesResponse,
      () => ImdbapiListListInterestCategoriesResponse.fromJsonFactory,
    );

    return _interestsGet();
  }

  ///List interest categories
  @GET(path: '/interests')
  Future<chopper.Response<ImdbapiListListInterestCategoriesResponse>>
  _interestsGet({
    @chopper.Tag()
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
  });

  ///Get interest by ID
  ///@param interestId Required. The ID of the interest to retrieve.
  Future<chopper.Response<ImdbapiInterest>> interestsInterestIdGet({
    required String? interestId,
  }) {
    generatedMapping.putIfAbsent(
      ImdbapiInterest,
      () => ImdbapiInterest.fromJsonFactory,
    );

    return _interestsInterestIdGet(interestId: interestId);
  }

  ///Get interest by ID
  ///@param interestId Required. The ID of the interest to retrieve.
  @GET(path: '/interests/{interestId}')
  Future<chopper.Response<ImdbapiInterest>> _interestsInterestIdGet({
    @Path('interestId') required String? interestId,
    @chopper.Tag()
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
  });
}

@JsonSerializable(explicitToJson: true)
class ImdbapiAKA {
  const ImdbapiAKA({this.text, this.country, this.language, this.attributes});

  factory ImdbapiAKA.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiAKAFromJson(json);

  static const toJsonFactory = _$ImdbapiAKAToJson;
  Map<String, dynamic> toJson() => _$ImdbapiAKAToJson(this);

  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'country')
  final ImdbapiCountry? country;
  @JsonKey(name: 'language')
  final ImdbapiLanguage? language;
  @JsonKey(name: 'attributes', defaultValue: <String>[])
  final List<String>? attributes;
  static const fromJsonFactory = _$ImdbapiAKAFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiAKA &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality().equals(
                  other.language,
                  language,
                )) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality().equals(
                  other.attributes,
                  attributes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ImdbapiAKAExtension on ImdbapiAKA {
  ImdbapiAKA copyWith({
    String? text,
    ImdbapiCountry? country,
    ImdbapiLanguage? language,
    List<String>? attributes,
  }) {
    return ImdbapiAKA(
      text: text ?? this.text,
      country: country ?? this.country,
      language: language ?? this.language,
      attributes: attributes ?? this.attributes,
    );
  }

  ImdbapiAKA copyWithWrapped({
    Wrapped<String?>? text,
    Wrapped<ImdbapiCountry?>? country,
    Wrapped<ImdbapiLanguage?>? language,
    Wrapped<List<String>?>? attributes,
  }) {
    return ImdbapiAKA(
      text: (text != null ? text.value : this.text),
      country: (country != null ? country.value : this.country),
      language: (language != null ? language.value : this.language),
      attributes: (attributes != null ? attributes.value : this.attributes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiAwardNomination {
  const ImdbapiAwardNomination({
    this.titles,
    this.nominees,
    this.event,
    this.year,
    this.text,
    this.category,
    this.isWinner,
    this.winnerRank,
  });

  factory ImdbapiAwardNomination.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiAwardNominationFromJson(json);

  static const toJsonFactory = _$ImdbapiAwardNominationToJson;
  Map<String, dynamic> toJson() => _$ImdbapiAwardNominationToJson(this);

  @JsonKey(name: 'titles', defaultValue: <ImdbapiTitle>[])
  final List<ImdbapiTitle>? titles;
  @JsonKey(name: 'nominees', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? nominees;
  @JsonKey(name: 'event')
  final ImdbapiEvent? event;
  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'isWinner')
  final bool? isWinner;
  @JsonKey(name: 'winnerRank')
  final int? winnerRank;
  static const fromJsonFactory = _$ImdbapiAwardNominationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiAwardNomination &&
            (identical(other.titles, titles) ||
                const DeepCollectionEquality().equals(other.titles, titles)) &&
            (identical(other.nominees, nominees) ||
                const DeepCollectionEquality().equals(
                  other.nominees,
                  nominees,
                )) &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.isWinner, isWinner) ||
                const DeepCollectionEquality().equals(
                  other.isWinner,
                  isWinner,
                )) &&
            (identical(other.winnerRank, winnerRank) ||
                const DeepCollectionEquality().equals(
                  other.winnerRank,
                  winnerRank,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(titles) ^
      const DeepCollectionEquality().hash(nominees) ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isWinner) ^
      const DeepCollectionEquality().hash(winnerRank) ^
      runtimeType.hashCode;
}

extension $ImdbapiAwardNominationExtension on ImdbapiAwardNomination {
  ImdbapiAwardNomination copyWith({
    List<ImdbapiTitle>? titles,
    List<ImdbapiName>? nominees,
    ImdbapiEvent? event,
    int? year,
    String? text,
    String? category,
    bool? isWinner,
    int? winnerRank,
  }) {
    return ImdbapiAwardNomination(
      titles: titles ?? this.titles,
      nominees: nominees ?? this.nominees,
      event: event ?? this.event,
      year: year ?? this.year,
      text: text ?? this.text,
      category: category ?? this.category,
      isWinner: isWinner ?? this.isWinner,
      winnerRank: winnerRank ?? this.winnerRank,
    );
  }

  ImdbapiAwardNomination copyWithWrapped({
    Wrapped<List<ImdbapiTitle>?>? titles,
    Wrapped<List<ImdbapiName>?>? nominees,
    Wrapped<ImdbapiEvent?>? event,
    Wrapped<int?>? year,
    Wrapped<String?>? text,
    Wrapped<String?>? category,
    Wrapped<bool?>? isWinner,
    Wrapped<int?>? winnerRank,
  }) {
    return ImdbapiAwardNomination(
      titles: (titles != null ? titles.value : this.titles),
      nominees: (nominees != null ? nominees.value : this.nominees),
      event: (event != null ? event.value : this.event),
      year: (year != null ? year.value : this.year),
      text: (text != null ? text.value : this.text),
      category: (category != null ? category.value : this.category),
      isWinner: (isWinner != null ? isWinner.value : this.isWinner),
      winnerRank: (winnerRank != null ? winnerRank.value : this.winnerRank),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiAwardNominationStats {
  const ImdbapiAwardNominationStats({this.nominationCount, this.winCount});

  factory ImdbapiAwardNominationStats.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiAwardNominationStatsFromJson(json);

  static const toJsonFactory = _$ImdbapiAwardNominationStatsToJson;
  Map<String, dynamic> toJson() => _$ImdbapiAwardNominationStatsToJson(this);

  @JsonKey(name: 'nominationCount')
  final int? nominationCount;
  @JsonKey(name: 'winCount')
  final int? winCount;
  static const fromJsonFactory = _$ImdbapiAwardNominationStatsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiAwardNominationStats &&
            (identical(other.nominationCount, nominationCount) ||
                const DeepCollectionEquality().equals(
                  other.nominationCount,
                  nominationCount,
                )) &&
            (identical(other.winCount, winCount) ||
                const DeepCollectionEquality().equals(
                  other.winCount,
                  winCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nominationCount) ^
      const DeepCollectionEquality().hash(winCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiAwardNominationStatsExtension on ImdbapiAwardNominationStats {
  ImdbapiAwardNominationStats copyWith({int? nominationCount, int? winCount}) {
    return ImdbapiAwardNominationStats(
      nominationCount: nominationCount ?? this.nominationCount,
      winCount: winCount ?? this.winCount,
    );
  }

  ImdbapiAwardNominationStats copyWithWrapped({
    Wrapped<int?>? nominationCount,
    Wrapped<int?>? winCount,
  }) {
    return ImdbapiAwardNominationStats(
      nominationCount: (nominationCount != null
          ? nominationCount.value
          : this.nominationCount),
      winCount: (winCount != null ? winCount.value : this.winCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiBatchGetNamesResponse {
  const ImdbapiBatchGetNamesResponse({this.names});

  factory ImdbapiBatchGetNamesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiBatchGetNamesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiBatchGetNamesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiBatchGetNamesResponseToJson(this);

  @JsonKey(name: 'names', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? names;
  static const fromJsonFactory = _$ImdbapiBatchGetNamesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiBatchGetNamesResponse &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(names) ^ runtimeType.hashCode;
}

extension $ImdbapiBatchGetNamesResponseExtension
    on ImdbapiBatchGetNamesResponse {
  ImdbapiBatchGetNamesResponse copyWith({List<ImdbapiName>? names}) {
    return ImdbapiBatchGetNamesResponse(names: names ?? this.names);
  }

  ImdbapiBatchGetNamesResponse copyWithWrapped({
    Wrapped<List<ImdbapiName>?>? names,
  }) {
    return ImdbapiBatchGetNamesResponse(
      names: (names != null ? names.value : this.names),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiBatchGetTitlesResponse {
  const ImdbapiBatchGetTitlesResponse({this.titles});

  factory ImdbapiBatchGetTitlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiBatchGetTitlesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiBatchGetTitlesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiBatchGetTitlesResponseToJson(this);

  @JsonKey(name: 'titles', defaultValue: <ImdbapiTitle>[])
  final List<ImdbapiTitle>? titles;
  static const fromJsonFactory = _$ImdbapiBatchGetTitlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiBatchGetTitlesResponse &&
            (identical(other.titles, titles) ||
                const DeepCollectionEquality().equals(other.titles, titles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(titles) ^ runtimeType.hashCode;
}

extension $ImdbapiBatchGetTitlesResponseExtension
    on ImdbapiBatchGetTitlesResponse {
  ImdbapiBatchGetTitlesResponse copyWith({List<ImdbapiTitle>? titles}) {
    return ImdbapiBatchGetTitlesResponse(titles: titles ?? this.titles);
  }

  ImdbapiBatchGetTitlesResponse copyWithWrapped({
    Wrapped<List<ImdbapiTitle>?>? titles,
  }) {
    return ImdbapiBatchGetTitlesResponse(
      titles: (titles != null ? titles.value : this.titles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiBoxOffice {
  const ImdbapiBoxOffice({
    this.domesticGross,
    this.worldwideGross,
    this.openingWeekendGross,
    this.productionBudget,
  });

  factory ImdbapiBoxOffice.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiBoxOfficeFromJson(json);

  static const toJsonFactory = _$ImdbapiBoxOfficeToJson;
  Map<String, dynamic> toJson() => _$ImdbapiBoxOfficeToJson(this);

  @JsonKey(name: 'domesticGross')
  final ImdbapiMoney? domesticGross;
  @JsonKey(name: 'worldwideGross')
  final ImdbapiMoney? worldwideGross;
  @JsonKey(name: 'openingWeekendGross')
  final ImdbapiOpeningWeekendGross? openingWeekendGross;
  @JsonKey(name: 'productionBudget')
  final ImdbapiMoney? productionBudget;
  static const fromJsonFactory = _$ImdbapiBoxOfficeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiBoxOffice &&
            (identical(other.domesticGross, domesticGross) ||
                const DeepCollectionEquality().equals(
                  other.domesticGross,
                  domesticGross,
                )) &&
            (identical(other.worldwideGross, worldwideGross) ||
                const DeepCollectionEquality().equals(
                  other.worldwideGross,
                  worldwideGross,
                )) &&
            (identical(other.openingWeekendGross, openingWeekendGross) ||
                const DeepCollectionEquality().equals(
                  other.openingWeekendGross,
                  openingWeekendGross,
                )) &&
            (identical(other.productionBudget, productionBudget) ||
                const DeepCollectionEquality().equals(
                  other.productionBudget,
                  productionBudget,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(domesticGross) ^
      const DeepCollectionEquality().hash(worldwideGross) ^
      const DeepCollectionEquality().hash(openingWeekendGross) ^
      const DeepCollectionEquality().hash(productionBudget) ^
      runtimeType.hashCode;
}

extension $ImdbapiBoxOfficeExtension on ImdbapiBoxOffice {
  ImdbapiBoxOffice copyWith({
    ImdbapiMoney? domesticGross,
    ImdbapiMoney? worldwideGross,
    ImdbapiOpeningWeekendGross? openingWeekendGross,
    ImdbapiMoney? productionBudget,
  }) {
    return ImdbapiBoxOffice(
      domesticGross: domesticGross ?? this.domesticGross,
      worldwideGross: worldwideGross ?? this.worldwideGross,
      openingWeekendGross: openingWeekendGross ?? this.openingWeekendGross,
      productionBudget: productionBudget ?? this.productionBudget,
    );
  }

  ImdbapiBoxOffice copyWithWrapped({
    Wrapped<ImdbapiMoney?>? domesticGross,
    Wrapped<ImdbapiMoney?>? worldwideGross,
    Wrapped<ImdbapiOpeningWeekendGross?>? openingWeekendGross,
    Wrapped<ImdbapiMoney?>? productionBudget,
  }) {
    return ImdbapiBoxOffice(
      domesticGross: (domesticGross != null
          ? domesticGross.value
          : this.domesticGross),
      worldwideGross: (worldwideGross != null
          ? worldwideGross.value
          : this.worldwideGross),
      openingWeekendGross: (openingWeekendGross != null
          ? openingWeekendGross.value
          : this.openingWeekendGross),
      productionBudget: (productionBudget != null
          ? productionBudget.value
          : this.productionBudget),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiCertificate {
  const ImdbapiCertificate({this.rating, this.country, this.attributes});

  factory ImdbapiCertificate.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiCertificateFromJson(json);

  static const toJsonFactory = _$ImdbapiCertificateToJson;
  Map<String, dynamic> toJson() => _$ImdbapiCertificateToJson(this);

  @JsonKey(name: 'rating')
  final String? rating;
  @JsonKey(name: 'country')
  final ImdbapiCountry? country;
  @JsonKey(name: 'attributes', defaultValue: <String>[])
  final List<String>? attributes;
  static const fromJsonFactory = _$ImdbapiCertificateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiCertificate &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality().equals(
                  other.attributes,
                  attributes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ImdbapiCertificateExtension on ImdbapiCertificate {
  ImdbapiCertificate copyWith({
    String? rating,
    ImdbapiCountry? country,
    List<String>? attributes,
  }) {
    return ImdbapiCertificate(
      rating: rating ?? this.rating,
      country: country ?? this.country,
      attributes: attributes ?? this.attributes,
    );
  }

  ImdbapiCertificate copyWithWrapped({
    Wrapped<String?>? rating,
    Wrapped<ImdbapiCountry?>? country,
    Wrapped<List<String>?>? attributes,
  }) {
    return ImdbapiCertificate(
      rating: (rating != null ? rating.value : this.rating),
      country: (country != null ? country.value : this.country),
      attributes: (attributes != null ? attributes.value : this.attributes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiCompany {
  const ImdbapiCompany({this.id, this.name});

  factory ImdbapiCompany.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiCompanyFromJson(json);

  static const toJsonFactory = _$ImdbapiCompanyToJson;
  Map<String, dynamic> toJson() => _$ImdbapiCompanyToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ImdbapiCompanyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiCompany &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ImdbapiCompanyExtension on ImdbapiCompany {
  ImdbapiCompany copyWith({String? id, String? name}) {
    return ImdbapiCompany(id: id ?? this.id, name: name ?? this.name);
  }

  ImdbapiCompany copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? name,
  }) {
    return ImdbapiCompany(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiCompanyCredit {
  const ImdbapiCompanyCredit({
    this.company,
    this.category,
    this.countries,
    this.yearsInvolved,
    this.attributes,
  });

  factory ImdbapiCompanyCredit.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiCompanyCreditFromJson(json);

  static const toJsonFactory = _$ImdbapiCompanyCreditToJson;
  Map<String, dynamic> toJson() => _$ImdbapiCompanyCreditToJson(this);

  @JsonKey(name: 'company')
  final ImdbapiCompany? company;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'countries', defaultValue: <ImdbapiCountry>[])
  final List<ImdbapiCountry>? countries;
  @JsonKey(name: 'yearsInvolved')
  final ImdbapiYearsInvolved? yearsInvolved;
  @JsonKey(name: 'attributes', defaultValue: <String>[])
  final List<String>? attributes;
  static const fromJsonFactory = _$ImdbapiCompanyCreditFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiCompanyCredit &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(
                  other.company,
                  company,
                )) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality().equals(
                  other.countries,
                  countries,
                )) &&
            (identical(other.yearsInvolved, yearsInvolved) ||
                const DeepCollectionEquality().equals(
                  other.yearsInvolved,
                  yearsInvolved,
                )) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality().equals(
                  other.attributes,
                  attributes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(yearsInvolved) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ImdbapiCompanyCreditExtension on ImdbapiCompanyCredit {
  ImdbapiCompanyCredit copyWith({
    ImdbapiCompany? company,
    String? category,
    List<ImdbapiCountry>? countries,
    ImdbapiYearsInvolved? yearsInvolved,
    List<String>? attributes,
  }) {
    return ImdbapiCompanyCredit(
      company: company ?? this.company,
      category: category ?? this.category,
      countries: countries ?? this.countries,
      yearsInvolved: yearsInvolved ?? this.yearsInvolved,
      attributes: attributes ?? this.attributes,
    );
  }

  ImdbapiCompanyCredit copyWithWrapped({
    Wrapped<ImdbapiCompany?>? company,
    Wrapped<String?>? category,
    Wrapped<List<ImdbapiCountry>?>? countries,
    Wrapped<ImdbapiYearsInvolved?>? yearsInvolved,
    Wrapped<List<String>?>? attributes,
  }) {
    return ImdbapiCompanyCredit(
      company: (company != null ? company.value : this.company),
      category: (category != null ? category.value : this.category),
      countries: (countries != null ? countries.value : this.countries),
      yearsInvolved: (yearsInvolved != null
          ? yearsInvolved.value
          : this.yearsInvolved),
      attributes: (attributes != null ? attributes.value : this.attributes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiCountry {
  const ImdbapiCountry({this.code, this.name});

  factory ImdbapiCountry.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiCountryFromJson(json);

  static const toJsonFactory = _$ImdbapiCountryToJson;
  Map<String, dynamic> toJson() => _$ImdbapiCountryToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ImdbapiCountryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiCountry &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ImdbapiCountryExtension on ImdbapiCountry {
  ImdbapiCountry copyWith({String? code, String? name}) {
    return ImdbapiCountry(code: code ?? this.code, name: name ?? this.name);
  }

  ImdbapiCountry copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? name,
  }) {
    return ImdbapiCountry(
      code: (code != null ? code.value : this.code),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiCredit {
  const ImdbapiCredit({
    this.title,
    this.name,
    this.category,
    this.characters,
    this.episodeCount,
  });

  factory ImdbapiCredit.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiCreditFromJson(json);

  static const toJsonFactory = _$ImdbapiCreditToJson;
  Map<String, dynamic> toJson() => _$ImdbapiCreditToJson(this);

  @JsonKey(name: 'title')
  final ImdbapiTitle? title;
  @JsonKey(name: 'name')
  final ImdbapiName? name;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'characters', defaultValue: <String>[])
  final List<String>? characters;
  @JsonKey(name: 'episodeCount')
  final int? episodeCount;
  static const fromJsonFactory = _$ImdbapiCreditFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiCredit &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality().equals(
                  other.characters,
                  characters,
                )) &&
            (identical(other.episodeCount, episodeCount) ||
                const DeepCollectionEquality().equals(
                  other.episodeCount,
                  episodeCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(characters) ^
      const DeepCollectionEquality().hash(episodeCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiCreditExtension on ImdbapiCredit {
  ImdbapiCredit copyWith({
    ImdbapiTitle? title,
    ImdbapiName? name,
    String? category,
    List<String>? characters,
    int? episodeCount,
  }) {
    return ImdbapiCredit(
      title: title ?? this.title,
      name: name ?? this.name,
      category: category ?? this.category,
      characters: characters ?? this.characters,
      episodeCount: episodeCount ?? this.episodeCount,
    );
  }

  ImdbapiCredit copyWithWrapped({
    Wrapped<ImdbapiTitle?>? title,
    Wrapped<ImdbapiName?>? name,
    Wrapped<String?>? category,
    Wrapped<List<String>?>? characters,
    Wrapped<int?>? episodeCount,
  }) {
    return ImdbapiCredit(
      title: (title != null ? title.value : this.title),
      name: (name != null ? name.value : this.name),
      category: (category != null ? category.value : this.category),
      characters: (characters != null ? characters.value : this.characters),
      episodeCount: (episodeCount != null
          ? episodeCount.value
          : this.episodeCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiEpisode {
  const ImdbapiEpisode({
    this.id,
    this.title,
    this.primaryImage,
    this.season,
    this.episodeNumber,
    this.runtimeSeconds,
    this.plot,
    this.rating,
    this.releaseDate,
  });

  factory ImdbapiEpisode.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiEpisodeFromJson(json);

  static const toJsonFactory = _$ImdbapiEpisodeToJson;
  Map<String, dynamic> toJson() => _$ImdbapiEpisodeToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'primaryImage')
  final ImdbapiImage? primaryImage;
  @JsonKey(name: 'season')
  final String? season;
  @JsonKey(name: 'episodeNumber')
  final int? episodeNumber;
  @JsonKey(name: 'runtimeSeconds')
  final int? runtimeSeconds;
  @JsonKey(name: 'plot')
  final String? plot;
  @JsonKey(name: 'rating')
  final ImdbapiRating? rating;
  @JsonKey(name: 'releaseDate')
  final ImdbapiPrecisionDate? releaseDate;
  static const fromJsonFactory = _$ImdbapiEpisodeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiEpisode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.primaryImage, primaryImage) ||
                const DeepCollectionEquality().equals(
                  other.primaryImage,
                  primaryImage,
                )) &&
            (identical(other.season, season) ||
                const DeepCollectionEquality().equals(other.season, season)) &&
            (identical(other.episodeNumber, episodeNumber) ||
                const DeepCollectionEquality().equals(
                  other.episodeNumber,
                  episodeNumber,
                )) &&
            (identical(other.runtimeSeconds, runtimeSeconds) ||
                const DeepCollectionEquality().equals(
                  other.runtimeSeconds,
                  runtimeSeconds,
                )) &&
            (identical(other.plot, plot) ||
                const DeepCollectionEquality().equals(other.plot, plot)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality().equals(
                  other.releaseDate,
                  releaseDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(primaryImage) ^
      const DeepCollectionEquality().hash(season) ^
      const DeepCollectionEquality().hash(episodeNumber) ^
      const DeepCollectionEquality().hash(runtimeSeconds) ^
      const DeepCollectionEquality().hash(plot) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      runtimeType.hashCode;
}

extension $ImdbapiEpisodeExtension on ImdbapiEpisode {
  ImdbapiEpisode copyWith({
    String? id,
    String? title,
    ImdbapiImage? primaryImage,
    String? season,
    int? episodeNumber,
    int? runtimeSeconds,
    String? plot,
    ImdbapiRating? rating,
    ImdbapiPrecisionDate? releaseDate,
  }) {
    return ImdbapiEpisode(
      id: id ?? this.id,
      title: title ?? this.title,
      primaryImage: primaryImage ?? this.primaryImage,
      season: season ?? this.season,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      runtimeSeconds: runtimeSeconds ?? this.runtimeSeconds,
      plot: plot ?? this.plot,
      rating: rating ?? this.rating,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  ImdbapiEpisode copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? title,
    Wrapped<ImdbapiImage?>? primaryImage,
    Wrapped<String?>? season,
    Wrapped<int?>? episodeNumber,
    Wrapped<int?>? runtimeSeconds,
    Wrapped<String?>? plot,
    Wrapped<ImdbapiRating?>? rating,
    Wrapped<ImdbapiPrecisionDate?>? releaseDate,
  }) {
    return ImdbapiEpisode(
      id: (id != null ? id.value : this.id),
      title: (title != null ? title.value : this.title),
      primaryImage: (primaryImage != null
          ? primaryImage.value
          : this.primaryImage),
      season: (season != null ? season.value : this.season),
      episodeNumber: (episodeNumber != null
          ? episodeNumber.value
          : this.episodeNumber),
      runtimeSeconds: (runtimeSeconds != null
          ? runtimeSeconds.value
          : this.runtimeSeconds),
      plot: (plot != null ? plot.value : this.plot),
      rating: (rating != null ? rating.value : this.rating),
      releaseDate: (releaseDate != null ? releaseDate.value : this.releaseDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiEvent {
  const ImdbapiEvent({this.id, this.name});

  factory ImdbapiEvent.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiEventFromJson(json);

  static const toJsonFactory = _$ImdbapiEventToJson;
  Map<String, dynamic> toJson() => _$ImdbapiEventToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ImdbapiEventFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ImdbapiEventExtension on ImdbapiEvent {
  ImdbapiEvent copyWith({String? id, String? name}) {
    return ImdbapiEvent(id: id ?? this.id, name: name ?? this.name);
  }

  ImdbapiEvent copyWithWrapped({Wrapped<String?>? id, Wrapped<String?>? name}) {
    return ImdbapiEvent(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiImage {
  const ImdbapiImage({this.url, this.width, this.height, this.type});

  factory ImdbapiImage.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiImageFromJson(json);

  static const toJsonFactory = _$ImdbapiImageToJson;
  Map<String, dynamic> toJson() => _$ImdbapiImageToJson(this);

  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'width')
  final int? width;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$ImdbapiImageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ImdbapiImageExtension on ImdbapiImage {
  ImdbapiImage copyWith({String? url, int? width, int? height, String? type}) {
    return ImdbapiImage(
      url: url ?? this.url,
      width: width ?? this.width,
      height: height ?? this.height,
      type: type ?? this.type,
    );
  }

  ImdbapiImage copyWithWrapped({
    Wrapped<String?>? url,
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<String?>? type,
  }) {
    return ImdbapiImage(
      url: (url != null ? url.value : this.url),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiInterest {
  const ImdbapiInterest({
    this.id,
    this.name,
    this.primaryImage,
    this.description,
    this.isSubgenre,
    this.similarInterests,
  });

  factory ImdbapiInterest.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiInterestFromJson(json);

  static const toJsonFactory = _$ImdbapiInterestToJson;
  Map<String, dynamic> toJson() => _$ImdbapiInterestToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'primaryImage')
  final ImdbapiImage? primaryImage;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'isSubgenre')
  final bool? isSubgenre;
  @JsonKey(name: 'similarInterests', defaultValue: <ImdbapiInterest>[])
  final List<ImdbapiInterest>? similarInterests;
  static const fromJsonFactory = _$ImdbapiInterestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiInterest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.primaryImage, primaryImage) ||
                const DeepCollectionEquality().equals(
                  other.primaryImage,
                  primaryImage,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.isSubgenre, isSubgenre) ||
                const DeepCollectionEquality().equals(
                  other.isSubgenre,
                  isSubgenre,
                )) &&
            (identical(other.similarInterests, similarInterests) ||
                const DeepCollectionEquality().equals(
                  other.similarInterests,
                  similarInterests,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(primaryImage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isSubgenre) ^
      const DeepCollectionEquality().hash(similarInterests) ^
      runtimeType.hashCode;
}

extension $ImdbapiInterestExtension on ImdbapiInterest {
  ImdbapiInterest copyWith({
    String? id,
    String? name,
    ImdbapiImage? primaryImage,
    String? description,
    bool? isSubgenre,
    List<ImdbapiInterest>? similarInterests,
  }) {
    return ImdbapiInterest(
      id: id ?? this.id,
      name: name ?? this.name,
      primaryImage: primaryImage ?? this.primaryImage,
      description: description ?? this.description,
      isSubgenre: isSubgenre ?? this.isSubgenre,
      similarInterests: similarInterests ?? this.similarInterests,
    );
  }

  ImdbapiInterest copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? name,
    Wrapped<ImdbapiImage?>? primaryImage,
    Wrapped<String?>? description,
    Wrapped<bool?>? isSubgenre,
    Wrapped<List<ImdbapiInterest>?>? similarInterests,
  }) {
    return ImdbapiInterest(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      primaryImage: (primaryImage != null
          ? primaryImage.value
          : this.primaryImage),
      description: (description != null ? description.value : this.description),
      isSubgenre: (isSubgenre != null ? isSubgenre.value : this.isSubgenre),
      similarInterests: (similarInterests != null
          ? similarInterests.value
          : this.similarInterests),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiInterestCategory {
  const ImdbapiInterestCategory({this.category, this.interests});

  factory ImdbapiInterestCategory.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiInterestCategoryFromJson(json);

  static const toJsonFactory = _$ImdbapiInterestCategoryToJson;
  Map<String, dynamic> toJson() => _$ImdbapiInterestCategoryToJson(this);

  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'interests', defaultValue: <ImdbapiInterest>[])
  final List<ImdbapiInterest>? interests;
  static const fromJsonFactory = _$ImdbapiInterestCategoryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiInterestCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality().equals(
                  other.interests,
                  interests,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(interests) ^
      runtimeType.hashCode;
}

extension $ImdbapiInterestCategoryExtension on ImdbapiInterestCategory {
  ImdbapiInterestCategory copyWith({
    String? category,
    List<ImdbapiInterest>? interests,
  }) {
    return ImdbapiInterestCategory(
      category: category ?? this.category,
      interests: interests ?? this.interests,
    );
  }

  ImdbapiInterestCategory copyWithWrapped({
    Wrapped<String?>? category,
    Wrapped<List<ImdbapiInterest>?>? interests,
  }) {
    return ImdbapiInterestCategory(
      category: (category != null ? category.value : this.category),
      interests: (interests != null ? interests.value : this.interests),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiLanguage {
  const ImdbapiLanguage({this.code, this.name});

  factory ImdbapiLanguage.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiLanguageFromJson(json);

  static const toJsonFactory = _$ImdbapiLanguageToJson;
  Map<String, dynamic> toJson() => _$ImdbapiLanguageToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ImdbapiLanguageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiLanguage &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ImdbapiLanguageExtension on ImdbapiLanguage {
  ImdbapiLanguage copyWith({String? code, String? name}) {
    return ImdbapiLanguage(code: code ?? this.code, name: name ?? this.name);
  }

  ImdbapiLanguage copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? name,
  }) {
    return ImdbapiLanguage(
      code: (code != null ? code.value : this.code),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListListInterestCategoriesResponse {
  const ImdbapiListListInterestCategoriesResponse({this.categories});

  factory ImdbapiListListInterestCategoriesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListListInterestCategoriesResponseFromJson(json);

  static const toJsonFactory =
      _$ImdbapiListListInterestCategoriesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListListInterestCategoriesResponseToJson(this);

  @JsonKey(name: 'categories', defaultValue: <ImdbapiInterestCategory>[])
  final List<ImdbapiInterestCategory>? categories;
  static const fromJsonFactory =
      _$ImdbapiListListInterestCategoriesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListListInterestCategoriesResponse &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality().equals(
                  other.categories,
                  categories,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^ runtimeType.hashCode;
}

extension $ImdbapiListListInterestCategoriesResponseExtension
    on ImdbapiListListInterestCategoriesResponse {
  ImdbapiListListInterestCategoriesResponse copyWith({
    List<ImdbapiInterestCategory>? categories,
  }) {
    return ImdbapiListListInterestCategoriesResponse(
      categories: categories ?? this.categories,
    );
  }

  ImdbapiListListInterestCategoriesResponse copyWithWrapped({
    Wrapped<List<ImdbapiInterestCategory>?>? categories,
  }) {
    return ImdbapiListListInterestCategoriesResponse(
      categories: (categories != null ? categories.value : this.categories),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListNameFilmographyResponse {
  const ImdbapiListNameFilmographyResponse({
    this.credits,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListNameFilmographyResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListNameFilmographyResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListNameFilmographyResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListNameFilmographyResponseToJson(this);

  @JsonKey(name: 'credits', defaultValue: <ImdbapiCredit>[])
  final List<ImdbapiCredit>? credits;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListNameFilmographyResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListNameFilmographyResponse &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(
                  other.credits,
                  credits,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credits) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListNameFilmographyResponseExtension
    on ImdbapiListNameFilmographyResponse {
  ImdbapiListNameFilmographyResponse copyWith({
    List<ImdbapiCredit>? credits,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListNameFilmographyResponse(
      credits: credits ?? this.credits,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListNameFilmographyResponse copyWithWrapped({
    Wrapped<List<ImdbapiCredit>?>? credits,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListNameFilmographyResponse(
      credits: (credits != null ? credits.value : this.credits),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListNameImagesResponse {
  const ImdbapiListNameImagesResponse({
    this.images,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListNameImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListNameImagesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListNameImagesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListNameImagesResponseToJson(this);

  @JsonKey(name: 'images', defaultValue: <ImdbapiImage>[])
  final List<ImdbapiImage>? images;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListNameImagesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListNameImagesResponse &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListNameImagesResponseExtension
    on ImdbapiListNameImagesResponse {
  ImdbapiListNameImagesResponse copyWith({
    List<ImdbapiImage>? images,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListNameImagesResponse(
      images: images ?? this.images,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListNameImagesResponse copyWithWrapped({
    Wrapped<List<ImdbapiImage>?>? images,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListNameImagesResponse(
      images: (images != null ? images.value : this.images),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListNameRelationshipsResponse {
  const ImdbapiListNameRelationshipsResponse({this.relationships});

  factory ImdbapiListNameRelationshipsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListNameRelationshipsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListNameRelationshipsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListNameRelationshipsResponseToJson(this);

  @JsonKey(name: 'relationships', defaultValue: <ImdbapiNameRelationship>[])
  final List<ImdbapiNameRelationship>? relationships;
  static const fromJsonFactory = _$ImdbapiListNameRelationshipsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListNameRelationshipsResponse &&
            (identical(other.relationships, relationships) ||
                const DeepCollectionEquality().equals(
                  other.relationships,
                  relationships,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(relationships) ^ runtimeType.hashCode;
}

extension $ImdbapiListNameRelationshipsResponseExtension
    on ImdbapiListNameRelationshipsResponse {
  ImdbapiListNameRelationshipsResponse copyWith({
    List<ImdbapiNameRelationship>? relationships,
  }) {
    return ImdbapiListNameRelationshipsResponse(
      relationships: relationships ?? this.relationships,
    );
  }

  ImdbapiListNameRelationshipsResponse copyWithWrapped({
    Wrapped<List<ImdbapiNameRelationship>?>? relationships,
  }) {
    return ImdbapiListNameRelationshipsResponse(
      relationships: (relationships != null
          ? relationships.value
          : this.relationships),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListStarMetersResponse {
  const ImdbapiListStarMetersResponse({this.names, this.nextPageToken});

  factory ImdbapiListStarMetersResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListStarMetersResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListStarMetersResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListStarMetersResponseToJson(this);

  @JsonKey(name: 'names', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? names;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListStarMetersResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListStarMetersResponse &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(names) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListStarMetersResponseExtension
    on ImdbapiListStarMetersResponse {
  ImdbapiListStarMetersResponse copyWith({
    List<ImdbapiName>? names,
    String? nextPageToken,
  }) {
    return ImdbapiListStarMetersResponse(
      names: names ?? this.names,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListStarMetersResponse copyWithWrapped({
    Wrapped<List<ImdbapiName>?>? names,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListStarMetersResponse(
      names: (names != null ? names.value : this.names),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleAKAsResponse {
  const ImdbapiListTitleAKAsResponse({this.akas});

  factory ImdbapiListTitleAKAsResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitleAKAsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleAKAsResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListTitleAKAsResponseToJson(this);

  @JsonKey(name: 'akas', defaultValue: <ImdbapiAKA>[])
  final List<ImdbapiAKA>? akas;
  static const fromJsonFactory = _$ImdbapiListTitleAKAsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleAKAsResponse &&
            (identical(other.akas, akas) ||
                const DeepCollectionEquality().equals(other.akas, akas)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(akas) ^ runtimeType.hashCode;
}

extension $ImdbapiListTitleAKAsResponseExtension
    on ImdbapiListTitleAKAsResponse {
  ImdbapiListTitleAKAsResponse copyWith({List<ImdbapiAKA>? akas}) {
    return ImdbapiListTitleAKAsResponse(akas: akas ?? this.akas);
  }

  ImdbapiListTitleAKAsResponse copyWithWrapped({
    Wrapped<List<ImdbapiAKA>?>? akas,
  }) {
    return ImdbapiListTitleAKAsResponse(
      akas: (akas != null ? akas.value : this.akas),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleAwardNominationsResponse {
  const ImdbapiListTitleAwardNominationsResponse({
    this.stats,
    this.awardNominations,
    this.nextPageToken,
  });

  factory ImdbapiListTitleAwardNominationsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleAwardNominationsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleAwardNominationsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleAwardNominationsResponseToJson(this);

  @JsonKey(name: 'stats')
  final ImdbapiAwardNominationStats? stats;
  @JsonKey(name: 'awardNominations', defaultValue: <ImdbapiAwardNomination>[])
  final List<ImdbapiAwardNomination>? awardNominations;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory =
      _$ImdbapiListTitleAwardNominationsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleAwardNominationsResponse &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.awardNominations, awardNominations) ||
                const DeepCollectionEquality().equals(
                  other.awardNominations,
                  awardNominations,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(awardNominations) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleAwardNominationsResponseExtension
    on ImdbapiListTitleAwardNominationsResponse {
  ImdbapiListTitleAwardNominationsResponse copyWith({
    ImdbapiAwardNominationStats? stats,
    List<ImdbapiAwardNomination>? awardNominations,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleAwardNominationsResponse(
      stats: stats ?? this.stats,
      awardNominations: awardNominations ?? this.awardNominations,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleAwardNominationsResponse copyWithWrapped({
    Wrapped<ImdbapiAwardNominationStats?>? stats,
    Wrapped<List<ImdbapiAwardNomination>?>? awardNominations,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleAwardNominationsResponse(
      stats: (stats != null ? stats.value : this.stats),
      awardNominations: (awardNominations != null
          ? awardNominations.value
          : this.awardNominations),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleCertificatesResponse {
  const ImdbapiListTitleCertificatesResponse({
    this.certificates,
    this.totalCount,
  });

  factory ImdbapiListTitleCertificatesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleCertificatesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleCertificatesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleCertificatesResponseToJson(this);

  @JsonKey(name: 'certificates', defaultValue: <ImdbapiCertificate>[])
  final List<ImdbapiCertificate>? certificates;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  static const fromJsonFactory = _$ImdbapiListTitleCertificatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleCertificatesResponse &&
            (identical(other.certificates, certificates) ||
                const DeepCollectionEquality().equals(
                  other.certificates,
                  certificates,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(certificates) ^
      const DeepCollectionEquality().hash(totalCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleCertificatesResponseExtension
    on ImdbapiListTitleCertificatesResponse {
  ImdbapiListTitleCertificatesResponse copyWith({
    List<ImdbapiCertificate>? certificates,
    int? totalCount,
  }) {
    return ImdbapiListTitleCertificatesResponse(
      certificates: certificates ?? this.certificates,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  ImdbapiListTitleCertificatesResponse copyWithWrapped({
    Wrapped<List<ImdbapiCertificate>?>? certificates,
    Wrapped<int?>? totalCount,
  }) {
    return ImdbapiListTitleCertificatesResponse(
      certificates: (certificates != null
          ? certificates.value
          : this.certificates),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleCompanyCreditsResponse {
  const ImdbapiListTitleCompanyCreditsResponse({
    this.companyCredits,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitleCompanyCreditsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleCompanyCreditsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleCompanyCreditsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleCompanyCreditsResponseToJson(this);

  @JsonKey(name: 'companyCredits', defaultValue: <ImdbapiCompanyCredit>[])
  final List<ImdbapiCompanyCredit>? companyCredits;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory =
      _$ImdbapiListTitleCompanyCreditsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleCompanyCreditsResponse &&
            (identical(other.companyCredits, companyCredits) ||
                const DeepCollectionEquality().equals(
                  other.companyCredits,
                  companyCredits,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(companyCredits) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleCompanyCreditsResponseExtension
    on ImdbapiListTitleCompanyCreditsResponse {
  ImdbapiListTitleCompanyCreditsResponse copyWith({
    List<ImdbapiCompanyCredit>? companyCredits,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleCompanyCreditsResponse(
      companyCredits: companyCredits ?? this.companyCredits,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleCompanyCreditsResponse copyWithWrapped({
    Wrapped<List<ImdbapiCompanyCredit>?>? companyCredits,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleCompanyCreditsResponse(
      companyCredits: (companyCredits != null
          ? companyCredits.value
          : this.companyCredits),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleCreditsResponse {
  const ImdbapiListTitleCreditsResponse({
    this.credits,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitleCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitleCreditsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleCreditsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleCreditsResponseToJson(this);

  @JsonKey(name: 'credits', defaultValue: <ImdbapiCredit>[])
  final List<ImdbapiCredit>? credits;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListTitleCreditsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleCreditsResponse &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality().equals(
                  other.credits,
                  credits,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credits) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleCreditsResponseExtension
    on ImdbapiListTitleCreditsResponse {
  ImdbapiListTitleCreditsResponse copyWith({
    List<ImdbapiCredit>? credits,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleCreditsResponse(
      credits: credits ?? this.credits,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleCreditsResponse copyWithWrapped({
    Wrapped<List<ImdbapiCredit>?>? credits,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleCreditsResponse(
      credits: (credits != null ? credits.value : this.credits),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleEpisodesResponse {
  const ImdbapiListTitleEpisodesResponse({
    this.episodes,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitleEpisodesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleEpisodesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleEpisodesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleEpisodesResponseToJson(this);

  @JsonKey(name: 'episodes', defaultValue: <ImdbapiEpisode>[])
  final List<ImdbapiEpisode>? episodes;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListTitleEpisodesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleEpisodesResponse &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality().equals(
                  other.episodes,
                  episodes,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(episodes) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleEpisodesResponseExtension
    on ImdbapiListTitleEpisodesResponse {
  ImdbapiListTitleEpisodesResponse copyWith({
    List<ImdbapiEpisode>? episodes,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleEpisodesResponse(
      episodes: episodes ?? this.episodes,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleEpisodesResponse copyWithWrapped({
    Wrapped<List<ImdbapiEpisode>?>? episodes,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleEpisodesResponse(
      episodes: (episodes != null ? episodes.value : this.episodes),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleImagesResponse {
  const ImdbapiListTitleImagesResponse({
    this.images,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitleImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitleImagesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleImagesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListTitleImagesResponseToJson(this);

  @JsonKey(name: 'images', defaultValue: <ImdbapiImage>[])
  final List<ImdbapiImage>? images;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListTitleImagesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleImagesResponse &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleImagesResponseExtension
    on ImdbapiListTitleImagesResponse {
  ImdbapiListTitleImagesResponse copyWith({
    List<ImdbapiImage>? images,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleImagesResponse(
      images: images ?? this.images,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleImagesResponse copyWithWrapped({
    Wrapped<List<ImdbapiImage>?>? images,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleImagesResponse(
      images: (images != null ? images.value : this.images),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleParentsGuideResponse {
  const ImdbapiListTitleParentsGuideResponse({this.parentsGuide});

  factory ImdbapiListTitleParentsGuideResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleParentsGuideResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleParentsGuideResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleParentsGuideResponseToJson(this);

  @JsonKey(name: 'parentsGuide', defaultValue: <ImdbapiParentsGuide>[])
  final List<ImdbapiParentsGuide>? parentsGuide;
  static const fromJsonFactory = _$ImdbapiListTitleParentsGuideResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleParentsGuideResponse &&
            (identical(other.parentsGuide, parentsGuide) ||
                const DeepCollectionEquality().equals(
                  other.parentsGuide,
                  parentsGuide,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentsGuide) ^ runtimeType.hashCode;
}

extension $ImdbapiListTitleParentsGuideResponseExtension
    on ImdbapiListTitleParentsGuideResponse {
  ImdbapiListTitleParentsGuideResponse copyWith({
    List<ImdbapiParentsGuide>? parentsGuide,
  }) {
    return ImdbapiListTitleParentsGuideResponse(
      parentsGuide: parentsGuide ?? this.parentsGuide,
    );
  }

  ImdbapiListTitleParentsGuideResponse copyWithWrapped({
    Wrapped<List<ImdbapiParentsGuide>?>? parentsGuide,
  }) {
    return ImdbapiListTitleParentsGuideResponse(
      parentsGuide: (parentsGuide != null
          ? parentsGuide.value
          : this.parentsGuide),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleReleaseDatesResponse {
  const ImdbapiListTitleReleaseDatesResponse({this.releaseDates});

  factory ImdbapiListTitleReleaseDatesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ImdbapiListTitleReleaseDatesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleReleaseDatesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleReleaseDatesResponseToJson(this);

  @JsonKey(name: 'releaseDates', defaultValue: <ImdbapiReleaseDate>[])
  final List<ImdbapiReleaseDate>? releaseDates;
  static const fromJsonFactory = _$ImdbapiListTitleReleaseDatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleReleaseDatesResponse &&
            (identical(other.releaseDates, releaseDates) ||
                const DeepCollectionEquality().equals(
                  other.releaseDates,
                  releaseDates,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(releaseDates) ^ runtimeType.hashCode;
}

extension $ImdbapiListTitleReleaseDatesResponseExtension
    on ImdbapiListTitleReleaseDatesResponse {
  ImdbapiListTitleReleaseDatesResponse copyWith({
    List<ImdbapiReleaseDate>? releaseDates,
  }) {
    return ImdbapiListTitleReleaseDatesResponse(
      releaseDates: releaseDates ?? this.releaseDates,
    );
  }

  ImdbapiListTitleReleaseDatesResponse copyWithWrapped({
    Wrapped<List<ImdbapiReleaseDate>?>? releaseDates,
  }) {
    return ImdbapiListTitleReleaseDatesResponse(
      releaseDates: (releaseDates != null
          ? releaseDates.value
          : this.releaseDates),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleSeasonsResponse {
  const ImdbapiListTitleSeasonsResponse({this.seasons});

  factory ImdbapiListTitleSeasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitleSeasonsResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleSeasonsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ImdbapiListTitleSeasonsResponseToJson(this);

  @JsonKey(name: 'seasons', defaultValue: <ImdbapiSeason>[])
  final List<ImdbapiSeason>? seasons;
  static const fromJsonFactory = _$ImdbapiListTitleSeasonsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleSeasonsResponse &&
            (identical(other.seasons, seasons) ||
                const DeepCollectionEquality().equals(other.seasons, seasons)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(seasons) ^ runtimeType.hashCode;
}

extension $ImdbapiListTitleSeasonsResponseExtension
    on ImdbapiListTitleSeasonsResponse {
  ImdbapiListTitleSeasonsResponse copyWith({List<ImdbapiSeason>? seasons}) {
    return ImdbapiListTitleSeasonsResponse(seasons: seasons ?? this.seasons);
  }

  ImdbapiListTitleSeasonsResponse copyWithWrapped({
    Wrapped<List<ImdbapiSeason>?>? seasons,
  }) {
    return ImdbapiListTitleSeasonsResponse(
      seasons: (seasons != null ? seasons.value : this.seasons),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitleVideosResponse {
  const ImdbapiListTitleVideosResponse({
    this.videos,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitleVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitleVideosResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitleVideosResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListTitleVideosResponseToJson(this);

  @JsonKey(name: 'videos', defaultValue: <ImdbapiVideo>[])
  final List<ImdbapiVideo>? videos;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListTitleVideosResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitleVideosResponse &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitleVideosResponseExtension
    on ImdbapiListTitleVideosResponse {
  ImdbapiListTitleVideosResponse copyWith({
    List<ImdbapiVideo>? videos,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitleVideosResponse(
      videos: videos ?? this.videos,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitleVideosResponse copyWithWrapped({
    Wrapped<List<ImdbapiVideo>?>? videos,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitleVideosResponse(
      videos: (videos != null ? videos.value : this.videos),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiListTitlesResponse {
  const ImdbapiListTitlesResponse({
    this.titles,
    this.totalCount,
    this.nextPageToken,
  });

  factory ImdbapiListTitlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiListTitlesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiListTitlesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiListTitlesResponseToJson(this);

  @JsonKey(name: 'titles', defaultValue: <ImdbapiTitle>[])
  final List<ImdbapiTitle>? titles;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'nextPageToken')
  final String? nextPageToken;
  static const fromJsonFactory = _$ImdbapiListTitlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiListTitlesResponse &&
            (identical(other.titles, titles) ||
                const DeepCollectionEquality().equals(other.titles, titles)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality().equals(
                  other.nextPageToken,
                  nextPageToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(titles) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      runtimeType.hashCode;
}

extension $ImdbapiListTitlesResponseExtension on ImdbapiListTitlesResponse {
  ImdbapiListTitlesResponse copyWith({
    List<ImdbapiTitle>? titles,
    int? totalCount,
    String? nextPageToken,
  }) {
    return ImdbapiListTitlesResponse(
      titles: titles ?? this.titles,
      totalCount: totalCount ?? this.totalCount,
      nextPageToken: nextPageToken ?? this.nextPageToken,
    );
  }

  ImdbapiListTitlesResponse copyWithWrapped({
    Wrapped<List<ImdbapiTitle>?>? titles,
    Wrapped<int?>? totalCount,
    Wrapped<String?>? nextPageToken,
  }) {
    return ImdbapiListTitlesResponse(
      titles: (titles != null ? titles.value : this.titles),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      nextPageToken: (nextPageToken != null
          ? nextPageToken.value
          : this.nextPageToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiMetacritic {
  const ImdbapiMetacritic({this.url, this.score, this.reviewCount});

  factory ImdbapiMetacritic.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiMetacriticFromJson(json);

  static const toJsonFactory = _$ImdbapiMetacriticToJson;
  Map<String, dynamic> toJson() => _$ImdbapiMetacriticToJson(this);

  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'score')
  final int? score;
  @JsonKey(name: 'reviewCount')
  final int? reviewCount;
  static const fromJsonFactory = _$ImdbapiMetacriticFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiMetacritic &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.reviewCount, reviewCount) ||
                const DeepCollectionEquality().equals(
                  other.reviewCount,
                  reviewCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(reviewCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiMetacriticExtension on ImdbapiMetacritic {
  ImdbapiMetacritic copyWith({String? url, int? score, int? reviewCount}) {
    return ImdbapiMetacritic(
      url: url ?? this.url,
      score: score ?? this.score,
      reviewCount: reviewCount ?? this.reviewCount,
    );
  }

  ImdbapiMetacritic copyWithWrapped({
    Wrapped<String?>? url,
    Wrapped<int?>? score,
    Wrapped<int?>? reviewCount,
  }) {
    return ImdbapiMetacritic(
      url: (url != null ? url.value : this.url),
      score: (score != null ? score.value : this.score),
      reviewCount: (reviewCount != null ? reviewCount.value : this.reviewCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiMoney {
  const ImdbapiMoney({this.amount, this.currency});

  factory ImdbapiMoney.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiMoneyFromJson(json);

  static const toJsonFactory = _$ImdbapiMoneyToJson;
  Map<String, dynamic> toJson() => _$ImdbapiMoneyToJson(this);

  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$ImdbapiMoneyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiMoney &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $ImdbapiMoneyExtension on ImdbapiMoney {
  ImdbapiMoney copyWith({String? amount, String? currency}) {
    return ImdbapiMoney(
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
    );
  }

  ImdbapiMoney copyWithWrapped({
    Wrapped<String?>? amount,
    Wrapped<String?>? currency,
  }) {
    return ImdbapiMoney(
      amount: (amount != null ? amount.value : this.amount),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiName {
  const ImdbapiName({
    this.id,
    this.displayName,
    this.alternativeNames,
    this.primaryImage,
    this.primaryProfessions,
    this.biography,
    this.heightCm,
    this.birthName,
    this.birthDate,
    this.birthLocation,
    this.deathDate,
    this.deathLocation,
    this.deathReason,
    this.meterRanking,
  });

  factory ImdbapiName.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiNameFromJson(json);

  static const toJsonFactory = _$ImdbapiNameToJson;
  Map<String, dynamic> toJson() => _$ImdbapiNameToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'alternativeNames', defaultValue: <String>[])
  final List<String>? alternativeNames;
  @JsonKey(name: 'primaryImage')
  final ImdbapiImage? primaryImage;
  @JsonKey(name: 'primaryProfessions', defaultValue: <String>[])
  final List<String>? primaryProfessions;
  @JsonKey(name: 'biography')
  final String? biography;
  @JsonKey(name: 'heightCm')
  final int? heightCm;
  @JsonKey(name: 'birthName')
  final String? birthName;
  @JsonKey(name: 'birthDate')
  final ImdbapiPrecisionDate? birthDate;
  @JsonKey(name: 'birthLocation')
  final String? birthLocation;
  @JsonKey(name: 'deathDate')
  final ImdbapiPrecisionDate? deathDate;
  @JsonKey(name: 'deathLocation')
  final String? deathLocation;
  @JsonKey(name: 'deathReason')
  final String? deathReason;
  @JsonKey(name: 'meterRanking')
  final ImdbapiNameMeterRanking? meterRanking;
  static const fromJsonFactory = _$ImdbapiNameFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiName &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality().equals(
                  other.displayName,
                  displayName,
                )) &&
            (identical(other.alternativeNames, alternativeNames) ||
                const DeepCollectionEquality().equals(
                  other.alternativeNames,
                  alternativeNames,
                )) &&
            (identical(other.primaryImage, primaryImage) ||
                const DeepCollectionEquality().equals(
                  other.primaryImage,
                  primaryImage,
                )) &&
            (identical(other.primaryProfessions, primaryProfessions) ||
                const DeepCollectionEquality().equals(
                  other.primaryProfessions,
                  primaryProfessions,
                )) &&
            (identical(other.biography, biography) ||
                const DeepCollectionEquality().equals(
                  other.biography,
                  biography,
                )) &&
            (identical(other.heightCm, heightCm) ||
                const DeepCollectionEquality().equals(
                  other.heightCm,
                  heightCm,
                )) &&
            (identical(other.birthName, birthName) ||
                const DeepCollectionEquality().equals(
                  other.birthName,
                  birthName,
                )) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality().equals(
                  other.birthDate,
                  birthDate,
                )) &&
            (identical(other.birthLocation, birthLocation) ||
                const DeepCollectionEquality().equals(
                  other.birthLocation,
                  birthLocation,
                )) &&
            (identical(other.deathDate, deathDate) ||
                const DeepCollectionEquality().equals(
                  other.deathDate,
                  deathDate,
                )) &&
            (identical(other.deathLocation, deathLocation) ||
                const DeepCollectionEquality().equals(
                  other.deathLocation,
                  deathLocation,
                )) &&
            (identical(other.deathReason, deathReason) ||
                const DeepCollectionEquality().equals(
                  other.deathReason,
                  deathReason,
                )) &&
            (identical(other.meterRanking, meterRanking) ||
                const DeepCollectionEquality().equals(
                  other.meterRanking,
                  meterRanking,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(alternativeNames) ^
      const DeepCollectionEquality().hash(primaryImage) ^
      const DeepCollectionEquality().hash(primaryProfessions) ^
      const DeepCollectionEquality().hash(biography) ^
      const DeepCollectionEquality().hash(heightCm) ^
      const DeepCollectionEquality().hash(birthName) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(birthLocation) ^
      const DeepCollectionEquality().hash(deathDate) ^
      const DeepCollectionEquality().hash(deathLocation) ^
      const DeepCollectionEquality().hash(deathReason) ^
      const DeepCollectionEquality().hash(meterRanking) ^
      runtimeType.hashCode;
}

extension $ImdbapiNameExtension on ImdbapiName {
  ImdbapiName copyWith({
    String? id,
    String? displayName,
    List<String>? alternativeNames,
    ImdbapiImage? primaryImage,
    List<String>? primaryProfessions,
    String? biography,
    int? heightCm,
    String? birthName,
    ImdbapiPrecisionDate? birthDate,
    String? birthLocation,
    ImdbapiPrecisionDate? deathDate,
    String? deathLocation,
    String? deathReason,
    ImdbapiNameMeterRanking? meterRanking,
  }) {
    return ImdbapiName(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      alternativeNames: alternativeNames ?? this.alternativeNames,
      primaryImage: primaryImage ?? this.primaryImage,
      primaryProfessions: primaryProfessions ?? this.primaryProfessions,
      biography: biography ?? this.biography,
      heightCm: heightCm ?? this.heightCm,
      birthName: birthName ?? this.birthName,
      birthDate: birthDate ?? this.birthDate,
      birthLocation: birthLocation ?? this.birthLocation,
      deathDate: deathDate ?? this.deathDate,
      deathLocation: deathLocation ?? this.deathLocation,
      deathReason: deathReason ?? this.deathReason,
      meterRanking: meterRanking ?? this.meterRanking,
    );
  }

  ImdbapiName copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? displayName,
    Wrapped<List<String>?>? alternativeNames,
    Wrapped<ImdbapiImage?>? primaryImage,
    Wrapped<List<String>?>? primaryProfessions,
    Wrapped<String?>? biography,
    Wrapped<int?>? heightCm,
    Wrapped<String?>? birthName,
    Wrapped<ImdbapiPrecisionDate?>? birthDate,
    Wrapped<String?>? birthLocation,
    Wrapped<ImdbapiPrecisionDate?>? deathDate,
    Wrapped<String?>? deathLocation,
    Wrapped<String?>? deathReason,
    Wrapped<ImdbapiNameMeterRanking?>? meterRanking,
  }) {
    return ImdbapiName(
      id: (id != null ? id.value : this.id),
      displayName: (displayName != null ? displayName.value : this.displayName),
      alternativeNames: (alternativeNames != null
          ? alternativeNames.value
          : this.alternativeNames),
      primaryImage: (primaryImage != null
          ? primaryImage.value
          : this.primaryImage),
      primaryProfessions: (primaryProfessions != null
          ? primaryProfessions.value
          : this.primaryProfessions),
      biography: (biography != null ? biography.value : this.biography),
      heightCm: (heightCm != null ? heightCm.value : this.heightCm),
      birthName: (birthName != null ? birthName.value : this.birthName),
      birthDate: (birthDate != null ? birthDate.value : this.birthDate),
      birthLocation: (birthLocation != null
          ? birthLocation.value
          : this.birthLocation),
      deathDate: (deathDate != null ? deathDate.value : this.deathDate),
      deathLocation: (deathLocation != null
          ? deathLocation.value
          : this.deathLocation),
      deathReason: (deathReason != null ? deathReason.value : this.deathReason),
      meterRanking: (meterRanking != null
          ? meterRanking.value
          : this.meterRanking),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiNameMeterRanking {
  const ImdbapiNameMeterRanking({
    this.currentRank,
    this.changeDirection,
    this.difference,
  });

  factory ImdbapiNameMeterRanking.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiNameMeterRankingFromJson(json);

  static const toJsonFactory = _$ImdbapiNameMeterRankingToJson;
  Map<String, dynamic> toJson() => _$ImdbapiNameMeterRankingToJson(this);

  @JsonKey(name: 'currentRank')
  final int? currentRank;
  @JsonKey(name: 'changeDirection')
  final String? changeDirection;
  @JsonKey(name: 'difference')
  final int? difference;
  static const fromJsonFactory = _$ImdbapiNameMeterRankingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiNameMeterRanking &&
            (identical(other.currentRank, currentRank) ||
                const DeepCollectionEquality().equals(
                  other.currentRank,
                  currentRank,
                )) &&
            (identical(other.changeDirection, changeDirection) ||
                const DeepCollectionEquality().equals(
                  other.changeDirection,
                  changeDirection,
                )) &&
            (identical(other.difference, difference) ||
                const DeepCollectionEquality().equals(
                  other.difference,
                  difference,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentRank) ^
      const DeepCollectionEquality().hash(changeDirection) ^
      const DeepCollectionEquality().hash(difference) ^
      runtimeType.hashCode;
}

extension $ImdbapiNameMeterRankingExtension on ImdbapiNameMeterRanking {
  ImdbapiNameMeterRanking copyWith({
    int? currentRank,
    String? changeDirection,
    int? difference,
  }) {
    return ImdbapiNameMeterRanking(
      currentRank: currentRank ?? this.currentRank,
      changeDirection: changeDirection ?? this.changeDirection,
      difference: difference ?? this.difference,
    );
  }

  ImdbapiNameMeterRanking copyWithWrapped({
    Wrapped<int?>? currentRank,
    Wrapped<String?>? changeDirection,
    Wrapped<int?>? difference,
  }) {
    return ImdbapiNameMeterRanking(
      currentRank: (currentRank != null ? currentRank.value : this.currentRank),
      changeDirection: (changeDirection != null
          ? changeDirection.value
          : this.changeDirection),
      difference: (difference != null ? difference.value : this.difference),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiNameRelationship {
  const ImdbapiNameRelationship({
    this.name,
    this.relationType,
    this.attributes,
  });

  factory ImdbapiNameRelationship.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiNameRelationshipFromJson(json);

  static const toJsonFactory = _$ImdbapiNameRelationshipToJson;
  Map<String, dynamic> toJson() => _$ImdbapiNameRelationshipToJson(this);

  @JsonKey(name: 'name')
  final ImdbapiName? name;
  @JsonKey(name: 'relationType')
  final String? relationType;
  @JsonKey(name: 'attributes', defaultValue: <String>[])
  final List<String>? attributes;
  static const fromJsonFactory = _$ImdbapiNameRelationshipFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiNameRelationship &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.relationType, relationType) ||
                const DeepCollectionEquality().equals(
                  other.relationType,
                  relationType,
                )) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality().equals(
                  other.attributes,
                  attributes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(relationType) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ImdbapiNameRelationshipExtension on ImdbapiNameRelationship {
  ImdbapiNameRelationship copyWith({
    ImdbapiName? name,
    String? relationType,
    List<String>? attributes,
  }) {
    return ImdbapiNameRelationship(
      name: name ?? this.name,
      relationType: relationType ?? this.relationType,
      attributes: attributes ?? this.attributes,
    );
  }

  ImdbapiNameRelationship copyWithWrapped({
    Wrapped<ImdbapiName?>? name,
    Wrapped<String?>? relationType,
    Wrapped<List<String>?>? attributes,
  }) {
    return ImdbapiNameRelationship(
      name: (name != null ? name.value : this.name),
      relationType: (relationType != null
          ? relationType.value
          : this.relationType),
      attributes: (attributes != null ? attributes.value : this.attributes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiOpeningWeekendGross {
  const ImdbapiOpeningWeekendGross({this.gross, this.weekendEndDate});

  factory ImdbapiOpeningWeekendGross.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiOpeningWeekendGrossFromJson(json);

  static const toJsonFactory = _$ImdbapiOpeningWeekendGrossToJson;
  Map<String, dynamic> toJson() => _$ImdbapiOpeningWeekendGrossToJson(this);

  @JsonKey(name: 'gross')
  final ImdbapiMoney? gross;
  @JsonKey(name: 'weekendEndDate')
  final ImdbapiPrecisionDate? weekendEndDate;
  static const fromJsonFactory = _$ImdbapiOpeningWeekendGrossFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiOpeningWeekendGross &&
            (identical(other.gross, gross) ||
                const DeepCollectionEquality().equals(other.gross, gross)) &&
            (identical(other.weekendEndDate, weekendEndDate) ||
                const DeepCollectionEquality().equals(
                  other.weekendEndDate,
                  weekendEndDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gross) ^
      const DeepCollectionEquality().hash(weekendEndDate) ^
      runtimeType.hashCode;
}

extension $ImdbapiOpeningWeekendGrossExtension on ImdbapiOpeningWeekendGross {
  ImdbapiOpeningWeekendGross copyWith({
    ImdbapiMoney? gross,
    ImdbapiPrecisionDate? weekendEndDate,
  }) {
    return ImdbapiOpeningWeekendGross(
      gross: gross ?? this.gross,
      weekendEndDate: weekendEndDate ?? this.weekendEndDate,
    );
  }

  ImdbapiOpeningWeekendGross copyWithWrapped({
    Wrapped<ImdbapiMoney?>? gross,
    Wrapped<ImdbapiPrecisionDate?>? weekendEndDate,
  }) {
    return ImdbapiOpeningWeekendGross(
      gross: (gross != null ? gross.value : this.gross),
      weekendEndDate: (weekendEndDate != null
          ? weekendEndDate.value
          : this.weekendEndDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiParentsGuide {
  const ImdbapiParentsGuide({
    this.category,
    this.severityBreakdowns,
    this.reviews,
  });

  factory ImdbapiParentsGuide.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiParentsGuideFromJson(json);

  static const toJsonFactory = _$ImdbapiParentsGuideToJson;
  Map<String, dynamic> toJson() => _$ImdbapiParentsGuideToJson(this);

  @JsonKey(
    name: 'category',
    toJson: imdbapiParentsGuideCategoryNullableToJson,
    fromJson: imdbapiParentsGuideCategoryNullableFromJson,
  )
  final enums.ImdbapiParentsGuideCategory? category;
  @JsonKey(
    name: 'severityBreakdowns',
    defaultValue: <ImdbapiParentsGuideSeverity>[],
  )
  final List<ImdbapiParentsGuideSeverity>? severityBreakdowns;
  @JsonKey(name: 'reviews', defaultValue: <ImdbapiParentsGuideReview>[])
  final List<ImdbapiParentsGuideReview>? reviews;
  static const fromJsonFactory = _$ImdbapiParentsGuideFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiParentsGuide &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.severityBreakdowns, severityBreakdowns) ||
                const DeepCollectionEquality().equals(
                  other.severityBreakdowns,
                  severityBreakdowns,
                )) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(severityBreakdowns) ^
      const DeepCollectionEquality().hash(reviews) ^
      runtimeType.hashCode;
}

extension $ImdbapiParentsGuideExtension on ImdbapiParentsGuide {
  ImdbapiParentsGuide copyWith({
    enums.ImdbapiParentsGuideCategory? category,
    List<ImdbapiParentsGuideSeverity>? severityBreakdowns,
    List<ImdbapiParentsGuideReview>? reviews,
  }) {
    return ImdbapiParentsGuide(
      category: category ?? this.category,
      severityBreakdowns: severityBreakdowns ?? this.severityBreakdowns,
      reviews: reviews ?? this.reviews,
    );
  }

  ImdbapiParentsGuide copyWithWrapped({
    Wrapped<enums.ImdbapiParentsGuideCategory?>? category,
    Wrapped<List<ImdbapiParentsGuideSeverity>?>? severityBreakdowns,
    Wrapped<List<ImdbapiParentsGuideReview>?>? reviews,
  }) {
    return ImdbapiParentsGuide(
      category: (category != null ? category.value : this.category),
      severityBreakdowns: (severityBreakdowns != null
          ? severityBreakdowns.value
          : this.severityBreakdowns),
      reviews: (reviews != null ? reviews.value : this.reviews),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiParentsGuideReview {
  const ImdbapiParentsGuideReview({this.text, this.isSpoiler});

  factory ImdbapiParentsGuideReview.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiParentsGuideReviewFromJson(json);

  static const toJsonFactory = _$ImdbapiParentsGuideReviewToJson;
  Map<String, dynamic> toJson() => _$ImdbapiParentsGuideReviewToJson(this);

  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'isSpoiler')
  final bool? isSpoiler;
  static const fromJsonFactory = _$ImdbapiParentsGuideReviewFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiParentsGuideReview &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.isSpoiler, isSpoiler) ||
                const DeepCollectionEquality().equals(
                  other.isSpoiler,
                  isSpoiler,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(isSpoiler) ^
      runtimeType.hashCode;
}

extension $ImdbapiParentsGuideReviewExtension on ImdbapiParentsGuideReview {
  ImdbapiParentsGuideReview copyWith({String? text, bool? isSpoiler}) {
    return ImdbapiParentsGuideReview(
      text: text ?? this.text,
      isSpoiler: isSpoiler ?? this.isSpoiler,
    );
  }

  ImdbapiParentsGuideReview copyWithWrapped({
    Wrapped<String?>? text,
    Wrapped<bool?>? isSpoiler,
  }) {
    return ImdbapiParentsGuideReview(
      text: (text != null ? text.value : this.text),
      isSpoiler: (isSpoiler != null ? isSpoiler.value : this.isSpoiler),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiParentsGuideSeverity {
  const ImdbapiParentsGuideSeverity({this.severityLevel, this.voteCount});

  factory ImdbapiParentsGuideSeverity.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiParentsGuideSeverityFromJson(json);

  static const toJsonFactory = _$ImdbapiParentsGuideSeverityToJson;
  Map<String, dynamic> toJson() => _$ImdbapiParentsGuideSeverityToJson(this);

  @JsonKey(name: 'severityLevel')
  final String? severityLevel;
  @JsonKey(name: 'voteCount')
  final int? voteCount;
  static const fromJsonFactory = _$ImdbapiParentsGuideSeverityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiParentsGuideSeverity &&
            (identical(other.severityLevel, severityLevel) ||
                const DeepCollectionEquality().equals(
                  other.severityLevel,
                  severityLevel,
                )) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality().equals(
                  other.voteCount,
                  voteCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(severityLevel) ^
      const DeepCollectionEquality().hash(voteCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiParentsGuideSeverityExtension on ImdbapiParentsGuideSeverity {
  ImdbapiParentsGuideSeverity copyWith({
    String? severityLevel,
    int? voteCount,
  }) {
    return ImdbapiParentsGuideSeverity(
      severityLevel: severityLevel ?? this.severityLevel,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  ImdbapiParentsGuideSeverity copyWithWrapped({
    Wrapped<String?>? severityLevel,
    Wrapped<int?>? voteCount,
  }) {
    return ImdbapiParentsGuideSeverity(
      severityLevel: (severityLevel != null
          ? severityLevel.value
          : this.severityLevel),
      voteCount: (voteCount != null ? voteCount.value : this.voteCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiPrecisionDate {
  const ImdbapiPrecisionDate({this.year, this.month, this.day});

  factory ImdbapiPrecisionDate.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiPrecisionDateFromJson(json);

  static const toJsonFactory = _$ImdbapiPrecisionDateToJson;
  Map<String, dynamic> toJson() => _$ImdbapiPrecisionDateToJson(this);

  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'month')
  final int? month;
  @JsonKey(name: 'day')
  final int? day;
  static const fromJsonFactory = _$ImdbapiPrecisionDateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiPrecisionDate &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(day) ^
      runtimeType.hashCode;
}

extension $ImdbapiPrecisionDateExtension on ImdbapiPrecisionDate {
  ImdbapiPrecisionDate copyWith({int? year, int? month, int? day}) {
    return ImdbapiPrecisionDate(
      year: year ?? this.year,
      month: month ?? this.month,
      day: day ?? this.day,
    );
  }

  ImdbapiPrecisionDate copyWithWrapped({
    Wrapped<int?>? year,
    Wrapped<int?>? month,
    Wrapped<int?>? day,
  }) {
    return ImdbapiPrecisionDate(
      year: (year != null ? year.value : this.year),
      month: (month != null ? month.value : this.month),
      day: (day != null ? day.value : this.day),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiRating {
  const ImdbapiRating({this.aggregateRating, this.voteCount});

  factory ImdbapiRating.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiRatingFromJson(json);

  static const toJsonFactory = _$ImdbapiRatingToJson;
  Map<String, dynamic> toJson() => _$ImdbapiRatingToJson(this);

  @JsonKey(name: 'aggregateRating')
  final double? aggregateRating;
  @JsonKey(name: 'voteCount')
  final int? voteCount;
  static const fromJsonFactory = _$ImdbapiRatingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiRating &&
            (identical(other.aggregateRating, aggregateRating) ||
                const DeepCollectionEquality().equals(
                  other.aggregateRating,
                  aggregateRating,
                )) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality().equals(
                  other.voteCount,
                  voteCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(aggregateRating) ^
      const DeepCollectionEquality().hash(voteCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiRatingExtension on ImdbapiRating {
  ImdbapiRating copyWith({double? aggregateRating, int? voteCount}) {
    return ImdbapiRating(
      aggregateRating: aggregateRating ?? this.aggregateRating,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  ImdbapiRating copyWithWrapped({
    Wrapped<double?>? aggregateRating,
    Wrapped<int?>? voteCount,
  }) {
    return ImdbapiRating(
      aggregateRating: (aggregateRating != null
          ? aggregateRating.value
          : this.aggregateRating),
      voteCount: (voteCount != null ? voteCount.value : this.voteCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiReleaseDate {
  const ImdbapiReleaseDate({this.country, this.releaseDate, this.attributes});

  factory ImdbapiReleaseDate.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiReleaseDateFromJson(json);

  static const toJsonFactory = _$ImdbapiReleaseDateToJson;
  Map<String, dynamic> toJson() => _$ImdbapiReleaseDateToJson(this);

  @JsonKey(name: 'country')
  final ImdbapiCountry? country;
  @JsonKey(name: 'releaseDate')
  final ImdbapiPrecisionDate? releaseDate;
  @JsonKey(name: 'attributes', defaultValue: <String>[])
  final List<String>? attributes;
  static const fromJsonFactory = _$ImdbapiReleaseDateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiReleaseDate &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality().equals(
                  other.releaseDate,
                  releaseDate,
                )) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality().equals(
                  other.attributes,
                  attributes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ImdbapiReleaseDateExtension on ImdbapiReleaseDate {
  ImdbapiReleaseDate copyWith({
    ImdbapiCountry? country,
    ImdbapiPrecisionDate? releaseDate,
    List<String>? attributes,
  }) {
    return ImdbapiReleaseDate(
      country: country ?? this.country,
      releaseDate: releaseDate ?? this.releaseDate,
      attributes: attributes ?? this.attributes,
    );
  }

  ImdbapiReleaseDate copyWithWrapped({
    Wrapped<ImdbapiCountry?>? country,
    Wrapped<ImdbapiPrecisionDate?>? releaseDate,
    Wrapped<List<String>?>? attributes,
  }) {
    return ImdbapiReleaseDate(
      country: (country != null ? country.value : this.country),
      releaseDate: (releaseDate != null ? releaseDate.value : this.releaseDate),
      attributes: (attributes != null ? attributes.value : this.attributes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiSearchTitlesResponse {
  const ImdbapiSearchTitlesResponse({this.titles});

  factory ImdbapiSearchTitlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiSearchTitlesResponseFromJson(json);

  static const toJsonFactory = _$ImdbapiSearchTitlesResponseToJson;
  Map<String, dynamic> toJson() => _$ImdbapiSearchTitlesResponseToJson(this);

  @JsonKey(name: 'titles', defaultValue: <ImdbapiTitle>[])
  final List<ImdbapiTitle>? titles;
  static const fromJsonFactory = _$ImdbapiSearchTitlesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiSearchTitlesResponse &&
            (identical(other.titles, titles) ||
                const DeepCollectionEquality().equals(other.titles, titles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(titles) ^ runtimeType.hashCode;
}

extension $ImdbapiSearchTitlesResponseExtension on ImdbapiSearchTitlesResponse {
  ImdbapiSearchTitlesResponse copyWith({List<ImdbapiTitle>? titles}) {
    return ImdbapiSearchTitlesResponse(titles: titles ?? this.titles);
  }

  ImdbapiSearchTitlesResponse copyWithWrapped({
    Wrapped<List<ImdbapiTitle>?>? titles,
  }) {
    return ImdbapiSearchTitlesResponse(
      titles: (titles != null ? titles.value : this.titles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiSeason {
  const ImdbapiSeason({this.season, this.episodeCount});

  factory ImdbapiSeason.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiSeasonFromJson(json);

  static const toJsonFactory = _$ImdbapiSeasonToJson;
  Map<String, dynamic> toJson() => _$ImdbapiSeasonToJson(this);

  @JsonKey(name: 'season')
  final String? season;
  @JsonKey(name: 'episodeCount')
  final int? episodeCount;
  static const fromJsonFactory = _$ImdbapiSeasonFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiSeason &&
            (identical(other.season, season) ||
                const DeepCollectionEquality().equals(other.season, season)) &&
            (identical(other.episodeCount, episodeCount) ||
                const DeepCollectionEquality().equals(
                  other.episodeCount,
                  episodeCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(season) ^
      const DeepCollectionEquality().hash(episodeCount) ^
      runtimeType.hashCode;
}

extension $ImdbapiSeasonExtension on ImdbapiSeason {
  ImdbapiSeason copyWith({String? season, int? episodeCount}) {
    return ImdbapiSeason(
      season: season ?? this.season,
      episodeCount: episodeCount ?? this.episodeCount,
    );
  }

  ImdbapiSeason copyWithWrapped({
    Wrapped<String?>? season,
    Wrapped<int?>? episodeCount,
  }) {
    return ImdbapiSeason(
      season: (season != null ? season.value : this.season),
      episodeCount: (episodeCount != null
          ? episodeCount.value
          : this.episodeCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiTitle {
  const ImdbapiTitle({
    this.id,
    this.type,
    this.isAdult,
    this.primaryTitle,
    this.originalTitle,
    this.primaryImage,
    this.startYear,
    this.endYear,
    this.runtimeSeconds,
    this.genres,
    this.rating,
    this.metacritic,
    this.plot,
    this.directors,
    this.writers,
    this.stars,
    this.originCountries,
    this.spokenLanguages,
    this.interests,
  });

  factory ImdbapiTitle.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiTitleFromJson(json);

  static const toJsonFactory = _$ImdbapiTitleToJson;
  Map<String, dynamic> toJson() => _$ImdbapiTitleToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'isAdult')
  final bool? isAdult;
  @JsonKey(name: 'primaryTitle')
  final String? primaryTitle;
  @JsonKey(name: 'originalTitle')
  final String? originalTitle;
  @JsonKey(name: 'primaryImage')
  final ImdbapiImage? primaryImage;
  @JsonKey(name: 'startYear')
  final int? startYear;
  @JsonKey(name: 'endYear')
  final int? endYear;
  @JsonKey(name: 'runtimeSeconds')
  final int? runtimeSeconds;
  @JsonKey(name: 'genres', defaultValue: <String>[])
  final List<String>? genres;
  @JsonKey(name: 'rating')
  final ImdbapiRating? rating;
  @JsonKey(name: 'metacritic')
  final ImdbapiMetacritic? metacritic;
  @JsonKey(name: 'plot')
  final String? plot;
  @JsonKey(name: 'directors', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? directors;
  @JsonKey(name: 'writers', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? writers;
  @JsonKey(name: 'stars', defaultValue: <ImdbapiName>[])
  final List<ImdbapiName>? stars;
  @JsonKey(name: 'originCountries', defaultValue: <ImdbapiCountry>[])
  final List<ImdbapiCountry>? originCountries;
  @JsonKey(name: 'spokenLanguages', defaultValue: <ImdbapiLanguage>[])
  final List<ImdbapiLanguage>? spokenLanguages;
  @JsonKey(name: 'interests', defaultValue: <ImdbapiInterest>[])
  final List<ImdbapiInterest>? interests;
  static const fromJsonFactory = _$ImdbapiTitleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiTitle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.isAdult, isAdult) ||
                const DeepCollectionEquality().equals(
                  other.isAdult,
                  isAdult,
                )) &&
            (identical(other.primaryTitle, primaryTitle) ||
                const DeepCollectionEquality().equals(
                  other.primaryTitle,
                  primaryTitle,
                )) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality().equals(
                  other.originalTitle,
                  originalTitle,
                )) &&
            (identical(other.primaryImage, primaryImage) ||
                const DeepCollectionEquality().equals(
                  other.primaryImage,
                  primaryImage,
                )) &&
            (identical(other.startYear, startYear) ||
                const DeepCollectionEquality().equals(
                  other.startYear,
                  startYear,
                )) &&
            (identical(other.endYear, endYear) ||
                const DeepCollectionEquality().equals(
                  other.endYear,
                  endYear,
                )) &&
            (identical(other.runtimeSeconds, runtimeSeconds) ||
                const DeepCollectionEquality().equals(
                  other.runtimeSeconds,
                  runtimeSeconds,
                )) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.metacritic, metacritic) ||
                const DeepCollectionEquality().equals(
                  other.metacritic,
                  metacritic,
                )) &&
            (identical(other.plot, plot) ||
                const DeepCollectionEquality().equals(other.plot, plot)) &&
            (identical(other.directors, directors) ||
                const DeepCollectionEquality().equals(
                  other.directors,
                  directors,
                )) &&
            (identical(other.writers, writers) ||
                const DeepCollectionEquality().equals(
                  other.writers,
                  writers,
                )) &&
            (identical(other.stars, stars) ||
                const DeepCollectionEquality().equals(other.stars, stars)) &&
            (identical(other.originCountries, originCountries) ||
                const DeepCollectionEquality().equals(
                  other.originCountries,
                  originCountries,
                )) &&
            (identical(other.spokenLanguages, spokenLanguages) ||
                const DeepCollectionEquality().equals(
                  other.spokenLanguages,
                  spokenLanguages,
                )) &&
            (identical(other.interests, interests) ||
                const DeepCollectionEquality().equals(
                  other.interests,
                  interests,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(isAdult) ^
      const DeepCollectionEquality().hash(primaryTitle) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(primaryImage) ^
      const DeepCollectionEquality().hash(startYear) ^
      const DeepCollectionEquality().hash(endYear) ^
      const DeepCollectionEquality().hash(runtimeSeconds) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(metacritic) ^
      const DeepCollectionEquality().hash(plot) ^
      const DeepCollectionEquality().hash(directors) ^
      const DeepCollectionEquality().hash(writers) ^
      const DeepCollectionEquality().hash(stars) ^
      const DeepCollectionEquality().hash(originCountries) ^
      const DeepCollectionEquality().hash(spokenLanguages) ^
      const DeepCollectionEquality().hash(interests) ^
      runtimeType.hashCode;
}

extension $ImdbapiTitleExtension on ImdbapiTitle {
  ImdbapiTitle copyWith({
    String? id,
    String? type,
    bool? isAdult,
    String? primaryTitle,
    String? originalTitle,
    ImdbapiImage? primaryImage,
    int? startYear,
    int? endYear,
    int? runtimeSeconds,
    List<String>? genres,
    ImdbapiRating? rating,
    ImdbapiMetacritic? metacritic,
    String? plot,
    List<ImdbapiName>? directors,
    List<ImdbapiName>? writers,
    List<ImdbapiName>? stars,
    List<ImdbapiCountry>? originCountries,
    List<ImdbapiLanguage>? spokenLanguages,
    List<ImdbapiInterest>? interests,
  }) {
    return ImdbapiTitle(
      id: id ?? this.id,
      type: type ?? this.type,
      isAdult: isAdult ?? this.isAdult,
      primaryTitle: primaryTitle ?? this.primaryTitle,
      originalTitle: originalTitle ?? this.originalTitle,
      primaryImage: primaryImage ?? this.primaryImage,
      startYear: startYear ?? this.startYear,
      endYear: endYear ?? this.endYear,
      runtimeSeconds: runtimeSeconds ?? this.runtimeSeconds,
      genres: genres ?? this.genres,
      rating: rating ?? this.rating,
      metacritic: metacritic ?? this.metacritic,
      plot: plot ?? this.plot,
      directors: directors ?? this.directors,
      writers: writers ?? this.writers,
      stars: stars ?? this.stars,
      originCountries: originCountries ?? this.originCountries,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      interests: interests ?? this.interests,
    );
  }

  ImdbapiTitle copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? type,
    Wrapped<bool?>? isAdult,
    Wrapped<String?>? primaryTitle,
    Wrapped<String?>? originalTitle,
    Wrapped<ImdbapiImage?>? primaryImage,
    Wrapped<int?>? startYear,
    Wrapped<int?>? endYear,
    Wrapped<int?>? runtimeSeconds,
    Wrapped<List<String>?>? genres,
    Wrapped<ImdbapiRating?>? rating,
    Wrapped<ImdbapiMetacritic?>? metacritic,
    Wrapped<String?>? plot,
    Wrapped<List<ImdbapiName>?>? directors,
    Wrapped<List<ImdbapiName>?>? writers,
    Wrapped<List<ImdbapiName>?>? stars,
    Wrapped<List<ImdbapiCountry>?>? originCountries,
    Wrapped<List<ImdbapiLanguage>?>? spokenLanguages,
    Wrapped<List<ImdbapiInterest>?>? interests,
  }) {
    return ImdbapiTitle(
      id: (id != null ? id.value : this.id),
      type: (type != null ? type.value : this.type),
      isAdult: (isAdult != null ? isAdult.value : this.isAdult),
      primaryTitle: (primaryTitle != null
          ? primaryTitle.value
          : this.primaryTitle),
      originalTitle: (originalTitle != null
          ? originalTitle.value
          : this.originalTitle),
      primaryImage: (primaryImage != null
          ? primaryImage.value
          : this.primaryImage),
      startYear: (startYear != null ? startYear.value : this.startYear),
      endYear: (endYear != null ? endYear.value : this.endYear),
      runtimeSeconds: (runtimeSeconds != null
          ? runtimeSeconds.value
          : this.runtimeSeconds),
      genres: (genres != null ? genres.value : this.genres),
      rating: (rating != null ? rating.value : this.rating),
      metacritic: (metacritic != null ? metacritic.value : this.metacritic),
      plot: (plot != null ? plot.value : this.plot),
      directors: (directors != null ? directors.value : this.directors),
      writers: (writers != null ? writers.value : this.writers),
      stars: (stars != null ? stars.value : this.stars),
      originCountries: (originCountries != null
          ? originCountries.value
          : this.originCountries),
      spokenLanguages: (spokenLanguages != null
          ? spokenLanguages.value
          : this.spokenLanguages),
      interests: (interests != null ? interests.value : this.interests),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiVideo {
  const ImdbapiVideo({
    this.id,
    this.type,
    this.name,
    this.primaryImage,
    this.description,
    this.width,
    this.height,
    this.runtimeSeconds,
  });

  factory ImdbapiVideo.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiVideoFromJson(json);

  static const toJsonFactory = _$ImdbapiVideoToJson;
  Map<String, dynamic> toJson() => _$ImdbapiVideoToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'primaryImage')
  final ImdbapiImage? primaryImage;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'width')
  final int? width;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'runtimeSeconds')
  final int? runtimeSeconds;
  static const fromJsonFactory = _$ImdbapiVideoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiVideo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.primaryImage, primaryImage) ||
                const DeepCollectionEquality().equals(
                  other.primaryImage,
                  primaryImage,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.runtimeSeconds, runtimeSeconds) ||
                const DeepCollectionEquality().equals(
                  other.runtimeSeconds,
                  runtimeSeconds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(primaryImage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(runtimeSeconds) ^
      runtimeType.hashCode;
}

extension $ImdbapiVideoExtension on ImdbapiVideo {
  ImdbapiVideo copyWith({
    String? id,
    String? type,
    String? name,
    ImdbapiImage? primaryImage,
    String? description,
    int? width,
    int? height,
    int? runtimeSeconds,
  }) {
    return ImdbapiVideo(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      primaryImage: primaryImage ?? this.primaryImage,
      description: description ?? this.description,
      width: width ?? this.width,
      height: height ?? this.height,
      runtimeSeconds: runtimeSeconds ?? this.runtimeSeconds,
    );
  }

  ImdbapiVideo copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? type,
    Wrapped<String?>? name,
    Wrapped<ImdbapiImage?>? primaryImage,
    Wrapped<String?>? description,
    Wrapped<int?>? width,
    Wrapped<int?>? height,
    Wrapped<int?>? runtimeSeconds,
  }) {
    return ImdbapiVideo(
      id: (id != null ? id.value : this.id),
      type: (type != null ? type.value : this.type),
      name: (name != null ? name.value : this.name),
      primaryImage: (primaryImage != null
          ? primaryImage.value
          : this.primaryImage),
      description: (description != null ? description.value : this.description),
      width: (width != null ? width.value : this.width),
      height: (height != null ? height.value : this.height),
      runtimeSeconds: (runtimeSeconds != null
          ? runtimeSeconds.value
          : this.runtimeSeconds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImdbapiYearsInvolved {
  const ImdbapiYearsInvolved({this.startYear, this.endYear});

  factory ImdbapiYearsInvolved.fromJson(Map<String, dynamic> json) =>
      _$ImdbapiYearsInvolvedFromJson(json);

  static const toJsonFactory = _$ImdbapiYearsInvolvedToJson;
  Map<String, dynamic> toJson() => _$ImdbapiYearsInvolvedToJson(this);

  @JsonKey(name: 'startYear')
  final int? startYear;
  @JsonKey(name: 'endYear')
  final int? endYear;
  static const fromJsonFactory = _$ImdbapiYearsInvolvedFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImdbapiYearsInvolved &&
            (identical(other.startYear, startYear) ||
                const DeepCollectionEquality().equals(
                  other.startYear,
                  startYear,
                )) &&
            (identical(other.endYear, endYear) ||
                const DeepCollectionEquality().equals(other.endYear, endYear)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(startYear) ^
      const DeepCollectionEquality().hash(endYear) ^
      runtimeType.hashCode;
}

extension $ImdbapiYearsInvolvedExtension on ImdbapiYearsInvolved {
  ImdbapiYearsInvolved copyWith({int? startYear, int? endYear}) {
    return ImdbapiYearsInvolved(
      startYear: startYear ?? this.startYear,
      endYear: endYear ?? this.endYear,
    );
  }

  ImdbapiYearsInvolved copyWithWrapped({
    Wrapped<int?>? startYear,
    Wrapped<int?>? endYear,
  }) {
    return ImdbapiYearsInvolved(
      startYear: (startYear != null ? startYear.value : this.startYear),
      endYear: (endYear != null ? endYear.value : this.endYear),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProtobufAny {
  const ProtobufAny({this.type});

  factory ProtobufAny.fromJson(Map<String, dynamic> json) =>
      _$ProtobufAnyFromJson(json);

  static const toJsonFactory = _$ProtobufAnyToJson;
  Map<String, dynamic> toJson() => _$ProtobufAnyToJson(this);

  @JsonKey(name: '@type')
  final String? type;
  static const fromJsonFactory = _$ProtobufAnyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProtobufAny &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^ runtimeType.hashCode;
}

extension $ProtobufAnyExtension on ProtobufAny {
  ProtobufAny copyWith({String? type}) {
    return ProtobufAny(type: type ?? this.type);
  }

  ProtobufAny copyWithWrapped({Wrapped<String?>? type}) {
    return ProtobufAny(type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class RpcStatus {
  const RpcStatus({this.code, this.message, this.details});

  factory RpcStatus.fromJson(Map<String, dynamic> json) =>
      _$RpcStatusFromJson(json);

  static const toJsonFactory = _$RpcStatusToJson;
  Map<String, dynamic> toJson() => _$RpcStatusToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'details', defaultValue: <ProtobufAny>[])
  final List<ProtobufAny>? details;
  static const fromJsonFactory = _$RpcStatusFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RpcStatus &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      runtimeType.hashCode;
}

extension $RpcStatusExtension on RpcStatus {
  RpcStatus copyWith({int? code, String? message, List<ProtobufAny>? details}) {
    return RpcStatus(
      code: code ?? this.code,
      message: message ?? this.message,
      details: details ?? this.details,
    );
  }

  RpcStatus copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<ProtobufAny>?>? details,
  }) {
    return RpcStatus(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      details: (details != null ? details.value : this.details),
    );
  }
}

String? imdbapiParentsGuideCategoryNullableToJson(
  enums.ImdbapiParentsGuideCategory? imdbapiParentsGuideCategory,
) {
  return imdbapiParentsGuideCategory?.value;
}

String? imdbapiParentsGuideCategoryToJson(
  enums.ImdbapiParentsGuideCategory imdbapiParentsGuideCategory,
) {
  return imdbapiParentsGuideCategory.value;
}

enums.ImdbapiParentsGuideCategory imdbapiParentsGuideCategoryFromJson(
  Object? imdbapiParentsGuideCategory, [
  enums.ImdbapiParentsGuideCategory? defaultValue,
]) {
  return enums.ImdbapiParentsGuideCategory.values.firstWhereOrNull(
        (e) => e.value == imdbapiParentsGuideCategory,
      ) ??
      defaultValue ??
      enums.ImdbapiParentsGuideCategory.swaggerGeneratedUnknown;
}

enums.ImdbapiParentsGuideCategory? imdbapiParentsGuideCategoryNullableFromJson(
  Object? imdbapiParentsGuideCategory, [
  enums.ImdbapiParentsGuideCategory? defaultValue,
]) {
  if (imdbapiParentsGuideCategory == null) {
    return null;
  }
  return enums.ImdbapiParentsGuideCategory.values.firstWhereOrNull(
        (e) => e.value == imdbapiParentsGuideCategory,
      ) ??
      defaultValue;
}

String imdbapiParentsGuideCategoryExplodedListToJson(
  List<enums.ImdbapiParentsGuideCategory>? imdbapiParentsGuideCategory,
) {
  return imdbapiParentsGuideCategory?.map((e) => e.value!).join(',') ?? '';
}

List<String> imdbapiParentsGuideCategoryListToJson(
  List<enums.ImdbapiParentsGuideCategory>? imdbapiParentsGuideCategory,
) {
  if (imdbapiParentsGuideCategory == null) {
    return [];
  }

  return imdbapiParentsGuideCategory.map((e) => e.value!).toList();
}

List<enums.ImdbapiParentsGuideCategory> imdbapiParentsGuideCategoryListFromJson(
  List? imdbapiParentsGuideCategory, [
  List<enums.ImdbapiParentsGuideCategory>? defaultValue,
]) {
  if (imdbapiParentsGuideCategory == null) {
    return defaultValue ?? [];
  }

  return imdbapiParentsGuideCategory
      .map((e) => imdbapiParentsGuideCategoryFromJson(e.toString()))
      .toList();
}

List<enums.ImdbapiParentsGuideCategory>?
imdbapiParentsGuideCategoryNullableListFromJson(
  List? imdbapiParentsGuideCategory, [
  List<enums.ImdbapiParentsGuideCategory>? defaultValue,
]) {
  if (imdbapiParentsGuideCategory == null) {
    return defaultValue;
  }

  return imdbapiParentsGuideCategory
      .map((e) => imdbapiParentsGuideCategoryFromJson(e.toString()))
      .toList();
}

String? imdbapiSortOrderNullableToJson(
  enums.ImdbapiSortOrder? imdbapiSortOrder,
) {
  return imdbapiSortOrder?.value;
}

String? imdbapiSortOrderToJson(enums.ImdbapiSortOrder imdbapiSortOrder) {
  return imdbapiSortOrder.value;
}

enums.ImdbapiSortOrder imdbapiSortOrderFromJson(
  Object? imdbapiSortOrder, [
  enums.ImdbapiSortOrder? defaultValue,
]) {
  return enums.ImdbapiSortOrder.values.firstWhereOrNull(
        (e) => e.value == imdbapiSortOrder,
      ) ??
      defaultValue ??
      enums.ImdbapiSortOrder.swaggerGeneratedUnknown;
}

enums.ImdbapiSortOrder? imdbapiSortOrderNullableFromJson(
  Object? imdbapiSortOrder, [
  enums.ImdbapiSortOrder? defaultValue,
]) {
  if (imdbapiSortOrder == null) {
    return null;
  }
  return enums.ImdbapiSortOrder.values.firstWhereOrNull(
        (e) => e.value == imdbapiSortOrder,
      ) ??
      defaultValue;
}

String imdbapiSortOrderExplodedListToJson(
  List<enums.ImdbapiSortOrder>? imdbapiSortOrder,
) {
  return imdbapiSortOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> imdbapiSortOrderListToJson(
  List<enums.ImdbapiSortOrder>? imdbapiSortOrder,
) {
  if (imdbapiSortOrder == null) {
    return [];
  }

  return imdbapiSortOrder.map((e) => e.value!).toList();
}

List<enums.ImdbapiSortOrder> imdbapiSortOrderListFromJson(
  List? imdbapiSortOrder, [
  List<enums.ImdbapiSortOrder>? defaultValue,
]) {
  if (imdbapiSortOrder == null) {
    return defaultValue ?? [];
  }

  return imdbapiSortOrder
      .map((e) => imdbapiSortOrderFromJson(e.toString()))
      .toList();
}

List<enums.ImdbapiSortOrder>? imdbapiSortOrderNullableListFromJson(
  List? imdbapiSortOrder, [
  List<enums.ImdbapiSortOrder>? defaultValue,
]) {
  if (imdbapiSortOrder == null) {
    return defaultValue;
  }

  return imdbapiSortOrder
      .map((e) => imdbapiSortOrderFromJson(e.toString()))
      .toList();
}

String? imdbapiTitleSortByNullableToJson(
  enums.ImdbapiTitleSortBy? imdbapiTitleSortBy,
) {
  return imdbapiTitleSortBy?.value;
}

String? imdbapiTitleSortByToJson(enums.ImdbapiTitleSortBy imdbapiTitleSortBy) {
  return imdbapiTitleSortBy.value;
}

enums.ImdbapiTitleSortBy imdbapiTitleSortByFromJson(
  Object? imdbapiTitleSortBy, [
  enums.ImdbapiTitleSortBy? defaultValue,
]) {
  return enums.ImdbapiTitleSortBy.values.firstWhereOrNull(
        (e) => e.value == imdbapiTitleSortBy,
      ) ??
      defaultValue ??
      enums.ImdbapiTitleSortBy.swaggerGeneratedUnknown;
}

enums.ImdbapiTitleSortBy? imdbapiTitleSortByNullableFromJson(
  Object? imdbapiTitleSortBy, [
  enums.ImdbapiTitleSortBy? defaultValue,
]) {
  if (imdbapiTitleSortBy == null) {
    return null;
  }
  return enums.ImdbapiTitleSortBy.values.firstWhereOrNull(
        (e) => e.value == imdbapiTitleSortBy,
      ) ??
      defaultValue;
}

String imdbapiTitleSortByExplodedListToJson(
  List<enums.ImdbapiTitleSortBy>? imdbapiTitleSortBy,
) {
  return imdbapiTitleSortBy?.map((e) => e.value!).join(',') ?? '';
}

List<String> imdbapiTitleSortByListToJson(
  List<enums.ImdbapiTitleSortBy>? imdbapiTitleSortBy,
) {
  if (imdbapiTitleSortBy == null) {
    return [];
  }

  return imdbapiTitleSortBy.map((e) => e.value!).toList();
}

List<enums.ImdbapiTitleSortBy> imdbapiTitleSortByListFromJson(
  List? imdbapiTitleSortBy, [
  List<enums.ImdbapiTitleSortBy>? defaultValue,
]) {
  if (imdbapiTitleSortBy == null) {
    return defaultValue ?? [];
  }

  return imdbapiTitleSortBy
      .map((e) => imdbapiTitleSortByFromJson(e.toString()))
      .toList();
}

List<enums.ImdbapiTitleSortBy>? imdbapiTitleSortByNullableListFromJson(
  List? imdbapiTitleSortBy, [
  List<enums.ImdbapiTitleSortBy>? defaultValue,
]) {
  if (imdbapiTitleSortBy == null) {
    return defaultValue;
  }

  return imdbapiTitleSortBy
      .map((e) => imdbapiTitleSortByFromJson(e.toString()))
      .toList();
}

String? imdbapiTitleTypeNullableToJson(
  enums.ImdbapiTitleType? imdbapiTitleType,
) {
  return imdbapiTitleType?.value;
}

String? imdbapiTitleTypeToJson(enums.ImdbapiTitleType imdbapiTitleType) {
  return imdbapiTitleType.value;
}

enums.ImdbapiTitleType imdbapiTitleTypeFromJson(
  Object? imdbapiTitleType, [
  enums.ImdbapiTitleType? defaultValue,
]) {
  return enums.ImdbapiTitleType.values.firstWhereOrNull(
        (e) => e.value == imdbapiTitleType,
      ) ??
      defaultValue ??
      enums.ImdbapiTitleType.swaggerGeneratedUnknown;
}

enums.ImdbapiTitleType? imdbapiTitleTypeNullableFromJson(
  Object? imdbapiTitleType, [
  enums.ImdbapiTitleType? defaultValue,
]) {
  if (imdbapiTitleType == null) {
    return null;
  }
  return enums.ImdbapiTitleType.values.firstWhereOrNull(
        (e) => e.value == imdbapiTitleType,
      ) ??
      defaultValue;
}

String imdbapiTitleTypeExplodedListToJson(
  List<enums.ImdbapiTitleType>? imdbapiTitleType,
) {
  return imdbapiTitleType?.map((e) => e.value!).join(',') ?? '';
}

List<String> imdbapiTitleTypeListToJson(
  List<enums.ImdbapiTitleType>? imdbapiTitleType,
) {
  if (imdbapiTitleType == null) {
    return [];
  }

  return imdbapiTitleType.map((e) => e.value!).toList();
}

List<enums.ImdbapiTitleType> imdbapiTitleTypeListFromJson(
  List? imdbapiTitleType, [
  List<enums.ImdbapiTitleType>? defaultValue,
]) {
  if (imdbapiTitleType == null) {
    return defaultValue ?? [];
  }

  return imdbapiTitleType
      .map((e) => imdbapiTitleTypeFromJson(e.toString()))
      .toList();
}

List<enums.ImdbapiTitleType>? imdbapiTitleTypeNullableListFromJson(
  List? imdbapiTitleType, [
  List<enums.ImdbapiTitleType>? defaultValue,
]) {
  if (imdbapiTitleType == null) {
    return defaultValue;
  }

  return imdbapiTitleType
      .map((e) => imdbapiTitleTypeFromJson(e.toString()))
      .toList();
}

String? titlesGetTypesNullableToJson(enums.TitlesGetTypes? titlesGetTypes) {
  return titlesGetTypes?.value;
}

String? titlesGetTypesToJson(enums.TitlesGetTypes titlesGetTypes) {
  return titlesGetTypes.value;
}

enums.TitlesGetTypes titlesGetTypesFromJson(
  Object? titlesGetTypes, [
  enums.TitlesGetTypes? defaultValue,
]) {
  return enums.TitlesGetTypes.values.firstWhereOrNull(
        (e) => e.value == titlesGetTypes,
      ) ??
      defaultValue ??
      enums.TitlesGetTypes.swaggerGeneratedUnknown;
}

enums.TitlesGetTypes? titlesGetTypesNullableFromJson(
  Object? titlesGetTypes, [
  enums.TitlesGetTypes? defaultValue,
]) {
  if (titlesGetTypes == null) {
    return null;
  }
  return enums.TitlesGetTypes.values.firstWhereOrNull(
        (e) => e.value == titlesGetTypes,
      ) ??
      defaultValue;
}

String titlesGetTypesExplodedListToJson(
  List<enums.TitlesGetTypes>? titlesGetTypes,
) {
  return titlesGetTypes?.map((e) => e.value!).join(',') ?? '';
}

List<String> titlesGetTypesListToJson(
  List<enums.TitlesGetTypes>? titlesGetTypes,
) {
  if (titlesGetTypes == null) {
    return [];
  }

  return titlesGetTypes.map((e) => e.value!).toList();
}

List<enums.TitlesGetTypes> titlesGetTypesListFromJson(
  List? titlesGetTypes, [
  List<enums.TitlesGetTypes>? defaultValue,
]) {
  if (titlesGetTypes == null) {
    return defaultValue ?? [];
  }

  return titlesGetTypes
      .map((e) => titlesGetTypesFromJson(e.toString()))
      .toList();
}

List<enums.TitlesGetTypes>? titlesGetTypesNullableListFromJson(
  List? titlesGetTypes, [
  List<enums.TitlesGetTypes>? defaultValue,
]) {
  if (titlesGetTypes == null) {
    return defaultValue;
  }

  return titlesGetTypes
      .map((e) => titlesGetTypesFromJson(e.toString()))
      .toList();
}

String? titlesGetSortByNullableToJson(enums.TitlesGetSortBy? titlesGetSortBy) {
  return titlesGetSortBy?.value;
}

String? titlesGetSortByToJson(enums.TitlesGetSortBy titlesGetSortBy) {
  return titlesGetSortBy.value;
}

enums.TitlesGetSortBy titlesGetSortByFromJson(
  Object? titlesGetSortBy, [
  enums.TitlesGetSortBy? defaultValue,
]) {
  return enums.TitlesGetSortBy.values.firstWhereOrNull(
        (e) => e.value == titlesGetSortBy,
      ) ??
      defaultValue ??
      enums.TitlesGetSortBy.swaggerGeneratedUnknown;
}

enums.TitlesGetSortBy? titlesGetSortByNullableFromJson(
  Object? titlesGetSortBy, [
  enums.TitlesGetSortBy? defaultValue,
]) {
  if (titlesGetSortBy == null) {
    return null;
  }
  return enums.TitlesGetSortBy.values.firstWhereOrNull(
        (e) => e.value == titlesGetSortBy,
      ) ??
      defaultValue;
}

String titlesGetSortByExplodedListToJson(
  List<enums.TitlesGetSortBy>? titlesGetSortBy,
) {
  return titlesGetSortBy?.map((e) => e.value!).join(',') ?? '';
}

List<String> titlesGetSortByListToJson(
  List<enums.TitlesGetSortBy>? titlesGetSortBy,
) {
  if (titlesGetSortBy == null) {
    return [];
  }

  return titlesGetSortBy.map((e) => e.value!).toList();
}

List<enums.TitlesGetSortBy> titlesGetSortByListFromJson(
  List? titlesGetSortBy, [
  List<enums.TitlesGetSortBy>? defaultValue,
]) {
  if (titlesGetSortBy == null) {
    return defaultValue ?? [];
  }

  return titlesGetSortBy
      .map((e) => titlesGetSortByFromJson(e.toString()))
      .toList();
}

List<enums.TitlesGetSortBy>? titlesGetSortByNullableListFromJson(
  List? titlesGetSortBy, [
  List<enums.TitlesGetSortBy>? defaultValue,
]) {
  if (titlesGetSortBy == null) {
    return defaultValue;
  }

  return titlesGetSortBy
      .map((e) => titlesGetSortByFromJson(e.toString()))
      .toList();
}

String? titlesGetSortOrderNullableToJson(
  enums.TitlesGetSortOrder? titlesGetSortOrder,
) {
  return titlesGetSortOrder?.value;
}

String? titlesGetSortOrderToJson(enums.TitlesGetSortOrder titlesGetSortOrder) {
  return titlesGetSortOrder.value;
}

enums.TitlesGetSortOrder titlesGetSortOrderFromJson(
  Object? titlesGetSortOrder, [
  enums.TitlesGetSortOrder? defaultValue,
]) {
  return enums.TitlesGetSortOrder.values.firstWhereOrNull(
        (e) => e.value == titlesGetSortOrder,
      ) ??
      defaultValue ??
      enums.TitlesGetSortOrder.swaggerGeneratedUnknown;
}

enums.TitlesGetSortOrder? titlesGetSortOrderNullableFromJson(
  Object? titlesGetSortOrder, [
  enums.TitlesGetSortOrder? defaultValue,
]) {
  if (titlesGetSortOrder == null) {
    return null;
  }
  return enums.TitlesGetSortOrder.values.firstWhereOrNull(
        (e) => e.value == titlesGetSortOrder,
      ) ??
      defaultValue;
}

String titlesGetSortOrderExplodedListToJson(
  List<enums.TitlesGetSortOrder>? titlesGetSortOrder,
) {
  return titlesGetSortOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> titlesGetSortOrderListToJson(
  List<enums.TitlesGetSortOrder>? titlesGetSortOrder,
) {
  if (titlesGetSortOrder == null) {
    return [];
  }

  return titlesGetSortOrder.map((e) => e.value!).toList();
}

List<enums.TitlesGetSortOrder> titlesGetSortOrderListFromJson(
  List? titlesGetSortOrder, [
  List<enums.TitlesGetSortOrder>? defaultValue,
]) {
  if (titlesGetSortOrder == null) {
    return defaultValue ?? [];
  }

  return titlesGetSortOrder
      .map((e) => titlesGetSortOrderFromJson(e.toString()))
      .toList();
}

List<enums.TitlesGetSortOrder>? titlesGetSortOrderNullableListFromJson(
  List? titlesGetSortOrder, [
  List<enums.TitlesGetSortOrder>? defaultValue,
]) {
  if (titlesGetSortOrder == null) {
    return defaultValue;
  }

  return titlesGetSortOrder
      .map((e) => titlesGetSortOrderFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
