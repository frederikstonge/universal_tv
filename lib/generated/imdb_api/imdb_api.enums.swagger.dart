// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum ImdbapiParentsGuideCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SEXUAL_CONTENT')
  sexualContent('SEXUAL_CONTENT'),
  @JsonValue('VIOLENCE')
  violence('VIOLENCE'),
  @JsonValue('PROFANITY')
  profanity('PROFANITY'),
  @JsonValue('ALCOHOL_DRUGS')
  alcoholDrugs('ALCOHOL_DRUGS'),
  @JsonValue('FRIGHTENING_INTENSE_SCENES')
  frighteningIntenseScenes('FRIGHTENING_INTENSE_SCENES');

  final String? value;

  const ImdbapiParentsGuideCategory(this.value);
}

enum ImdbapiSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ImdbapiSortOrder(this.value);
}

enum ImdbapiTitleSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SORT_BY_POPULARITY')
  sortByPopularity('SORT_BY_POPULARITY'),
  @JsonValue('SORT_BY_RELEASE_DATE')
  sortByReleaseDate('SORT_BY_RELEASE_DATE'),
  @JsonValue('SORT_BY_USER_RATING')
  sortByUserRating('SORT_BY_USER_RATING'),
  @JsonValue('SORT_BY_USER_RATING_COUNT')
  sortByUserRatingCount('SORT_BY_USER_RATING_COUNT'),
  @JsonValue('SORT_BY_YEAR')
  sortByYear('SORT_BY_YEAR');

  final String? value;

  const ImdbapiTitleSortBy(this.value);
}

enum ImdbapiTitleType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MOVIE')
  movie('MOVIE'),
  @JsonValue('TV_SERIES')
  tvSeries('TV_SERIES'),
  @JsonValue('TV_MINI_SERIES')
  tvMiniSeries('TV_MINI_SERIES'),
  @JsonValue('TV_SPECIAL')
  tvSpecial('TV_SPECIAL'),
  @JsonValue('TV_MOVIE')
  tvMovie('TV_MOVIE'),
  @JsonValue('SHORT')
  short('SHORT'),
  @JsonValue('VIDEO')
  video('VIDEO'),
  @JsonValue('VIDEO_GAME')
  videoGame('VIDEO_GAME');

  final String? value;

  const ImdbapiTitleType(this.value);
}

enum TitlesGetTypes {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MOVIE')
  movie('MOVIE'),
  @JsonValue('TV_SERIES')
  tvSeries('TV_SERIES'),
  @JsonValue('TV_MINI_SERIES')
  tvMiniSeries('TV_MINI_SERIES'),
  @JsonValue('TV_SPECIAL')
  tvSpecial('TV_SPECIAL'),
  @JsonValue('TV_MOVIE')
  tvMovie('TV_MOVIE'),
  @JsonValue('SHORT')
  short('SHORT'),
  @JsonValue('VIDEO')
  video('VIDEO'),
  @JsonValue('VIDEO_GAME')
  videoGame('VIDEO_GAME');

  final String? value;

  const TitlesGetTypes(this.value);
}

enum TitlesGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SORT_BY_POPULARITY')
  sortByPopularity('SORT_BY_POPULARITY'),
  @JsonValue('SORT_BY_RELEASE_DATE')
  sortByReleaseDate('SORT_BY_RELEASE_DATE'),
  @JsonValue('SORT_BY_USER_RATING')
  sortByUserRating('SORT_BY_USER_RATING'),
  @JsonValue('SORT_BY_USER_RATING_COUNT')
  sortByUserRatingCount('SORT_BY_USER_RATING_COUNT'),
  @JsonValue('SORT_BY_YEAR')
  sortByYear('SORT_BY_YEAR');

  final String? value;

  const TitlesGetSortBy(this.value);
}

enum TitlesGetSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const TitlesGetSortOrder(this.value);
}
