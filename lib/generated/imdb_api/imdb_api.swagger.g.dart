// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imdb_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImdbapiAKA _$ImdbapiAKAFromJson(Map<String, dynamic> json) => ImdbapiAKA(
  text: json['text'] as String?,
  country: json['country'] == null
      ? null
      : ImdbapiCountry.fromJson(json['country'] as Map<String, dynamic>),
  language: json['language'] == null
      ? null
      : ImdbapiLanguage.fromJson(json['language'] as Map<String, dynamic>),
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiAKAToJson(ImdbapiAKA instance) =>
    <String, dynamic>{
      'text': instance.text,
      'country': instance.country?.toJson(),
      'language': instance.language?.toJson(),
      'attributes': instance.attributes,
    };

ImdbapiAwardNomination _$ImdbapiAwardNominationFromJson(
  Map<String, dynamic> json,
) => ImdbapiAwardNomination(
  titles:
      (json['titles'] as List<dynamic>?)
          ?.map((e) => ImdbapiTitle.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  nominees:
      (json['nominees'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  event: json['event'] == null
      ? null
      : ImdbapiEvent.fromJson(json['event'] as Map<String, dynamic>),
  year: (json['year'] as num?)?.toInt(),
  text: json['text'] as String?,
  category: json['category'] as String?,
  isWinner: json['isWinner'] as bool?,
  winnerRank: (json['winnerRank'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiAwardNominationToJson(
  ImdbapiAwardNomination instance,
) => <String, dynamic>{
  'titles': instance.titles?.map((e) => e.toJson()).toList(),
  'nominees': instance.nominees?.map((e) => e.toJson()).toList(),
  'event': instance.event?.toJson(),
  'year': instance.year,
  'text': instance.text,
  'category': instance.category,
  'isWinner': instance.isWinner,
  'winnerRank': instance.winnerRank,
};

ImdbapiAwardNominationStats _$ImdbapiAwardNominationStatsFromJson(
  Map<String, dynamic> json,
) => ImdbapiAwardNominationStats(
  nominationCount: (json['nominationCount'] as num?)?.toInt(),
  winCount: (json['winCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiAwardNominationStatsToJson(
  ImdbapiAwardNominationStats instance,
) => <String, dynamic>{
  'nominationCount': instance.nominationCount,
  'winCount': instance.winCount,
};

ImdbapiBatchGetNamesResponse _$ImdbapiBatchGetNamesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiBatchGetNamesResponse(
  names:
      (json['names'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiBatchGetNamesResponseToJson(
  ImdbapiBatchGetNamesResponse instance,
) => <String, dynamic>{
  'names': instance.names?.map((e) => e.toJson()).toList(),
};

ImdbapiBatchGetTitlesResponse _$ImdbapiBatchGetTitlesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiBatchGetTitlesResponse(
  titles:
      (json['titles'] as List<dynamic>?)
          ?.map((e) => ImdbapiTitle.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiBatchGetTitlesResponseToJson(
  ImdbapiBatchGetTitlesResponse instance,
) => <String, dynamic>{
  'titles': instance.titles?.map((e) => e.toJson()).toList(),
};

ImdbapiBoxOffice _$ImdbapiBoxOfficeFromJson(
  Map<String, dynamic> json,
) => ImdbapiBoxOffice(
  domesticGross: json['domesticGross'] == null
      ? null
      : ImdbapiMoney.fromJson(json['domesticGross'] as Map<String, dynamic>),
  worldwideGross: json['worldwideGross'] == null
      ? null
      : ImdbapiMoney.fromJson(json['worldwideGross'] as Map<String, dynamic>),
  openingWeekendGross: json['openingWeekendGross'] == null
      ? null
      : ImdbapiOpeningWeekendGross.fromJson(
          json['openingWeekendGross'] as Map<String, dynamic>,
        ),
  productionBudget: json['productionBudget'] == null
      ? null
      : ImdbapiMoney.fromJson(json['productionBudget'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ImdbapiBoxOfficeToJson(ImdbapiBoxOffice instance) =>
    <String, dynamic>{
      'domesticGross': instance.domesticGross?.toJson(),
      'worldwideGross': instance.worldwideGross?.toJson(),
      'openingWeekendGross': instance.openingWeekendGross?.toJson(),
      'productionBudget': instance.productionBudget?.toJson(),
    };

ImdbapiCertificate _$ImdbapiCertificateFromJson(Map<String, dynamic> json) =>
    ImdbapiCertificate(
      rating: json['rating'] as String?,
      country: json['country'] == null
          ? null
          : ImdbapiCountry.fromJson(json['country'] as Map<String, dynamic>),
      attributes:
          (json['attributes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImdbapiCertificateToJson(ImdbapiCertificate instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'country': instance.country?.toJson(),
      'attributes': instance.attributes,
    };

ImdbapiCompany _$ImdbapiCompanyFromJson(Map<String, dynamic> json) =>
    ImdbapiCompany(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$ImdbapiCompanyToJson(ImdbapiCompany instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

ImdbapiCompanyCredit _$ImdbapiCompanyCreditFromJson(
  Map<String, dynamic> json,
) => ImdbapiCompanyCredit(
  company: json['company'] == null
      ? null
      : ImdbapiCompany.fromJson(json['company'] as Map<String, dynamic>),
  category: json['category'] as String?,
  countries:
      (json['countries'] as List<dynamic>?)
          ?.map((e) => ImdbapiCountry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  yearsInvolved: json['yearsInvolved'] == null
      ? null
      : ImdbapiYearsInvolved.fromJson(
          json['yearsInvolved'] as Map<String, dynamic>,
        ),
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiCompanyCreditToJson(
  ImdbapiCompanyCredit instance,
) => <String, dynamic>{
  'company': instance.company?.toJson(),
  'category': instance.category,
  'countries': instance.countries?.map((e) => e.toJson()).toList(),
  'yearsInvolved': instance.yearsInvolved?.toJson(),
  'attributes': instance.attributes,
};

ImdbapiCountry _$ImdbapiCountryFromJson(Map<String, dynamic> json) =>
    ImdbapiCountry(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ImdbapiCountryToJson(ImdbapiCountry instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};

ImdbapiCredit _$ImdbapiCreditFromJson(Map<String, dynamic> json) =>
    ImdbapiCredit(
      title: json['title'] == null
          ? null
          : ImdbapiTitle.fromJson(json['title'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : ImdbapiName.fromJson(json['name'] as Map<String, dynamic>),
      category: json['category'] as String?,
      characters:
          (json['characters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      episodeCount: (json['episodeCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiCreditToJson(ImdbapiCredit instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'name': instance.name?.toJson(),
      'category': instance.category,
      'characters': instance.characters,
      'episodeCount': instance.episodeCount,
    };

ImdbapiEpisode _$ImdbapiEpisodeFromJson(Map<String, dynamic> json) =>
    ImdbapiEpisode(
      id: json['id'] as String?,
      title: json['title'] as String?,
      primaryImage: json['primaryImage'] == null
          ? null
          : ImdbapiImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
      season: json['season'] as String?,
      episodeNumber: (json['episodeNumber'] as num?)?.toInt(),
      runtimeSeconds: (json['runtimeSeconds'] as num?)?.toInt(),
      plot: json['plot'] as String?,
      rating: json['rating'] == null
          ? null
          : ImdbapiRating.fromJson(json['rating'] as Map<String, dynamic>),
      releaseDate: json['releaseDate'] == null
          ? null
          : ImdbapiPrecisionDate.fromJson(
              json['releaseDate'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ImdbapiEpisodeToJson(ImdbapiEpisode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'primaryImage': instance.primaryImage?.toJson(),
      'season': instance.season,
      'episodeNumber': instance.episodeNumber,
      'runtimeSeconds': instance.runtimeSeconds,
      'plot': instance.plot,
      'rating': instance.rating?.toJson(),
      'releaseDate': instance.releaseDate?.toJson(),
    };

ImdbapiEvent _$ImdbapiEventFromJson(Map<String, dynamic> json) =>
    ImdbapiEvent(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$ImdbapiEventToJson(ImdbapiEvent instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

ImdbapiImage _$ImdbapiImageFromJson(Map<String, dynamic> json) => ImdbapiImage(
  url: json['url'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$ImdbapiImageToJson(ImdbapiImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'type': instance.type,
    };

ImdbapiInterest _$ImdbapiInterestFromJson(Map<String, dynamic> json) =>
    ImdbapiInterest(
      id: json['id'] as String?,
      name: json['name'] as String?,
      primaryImage: json['primaryImage'] == null
          ? null
          : ImdbapiImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
      description: json['description'] as String?,
      isSubgenre: json['isSubgenre'] as bool?,
      similarInterests:
          (json['similarInterests'] as List<dynamic>?)
              ?.map((e) => ImdbapiInterest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImdbapiInterestToJson(ImdbapiInterest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'primaryImage': instance.primaryImage?.toJson(),
      'description': instance.description,
      'isSubgenre': instance.isSubgenre,
      'similarInterests': instance.similarInterests
          ?.map((e) => e.toJson())
          .toList(),
    };

ImdbapiInterestCategory _$ImdbapiInterestCategoryFromJson(
  Map<String, dynamic> json,
) => ImdbapiInterestCategory(
  category: json['category'] as String?,
  interests:
      (json['interests'] as List<dynamic>?)
          ?.map((e) => ImdbapiInterest.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiInterestCategoryToJson(
  ImdbapiInterestCategory instance,
) => <String, dynamic>{
  'category': instance.category,
  'interests': instance.interests?.map((e) => e.toJson()).toList(),
};

ImdbapiLanguage _$ImdbapiLanguageFromJson(Map<String, dynamic> json) =>
    ImdbapiLanguage(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ImdbapiLanguageToJson(ImdbapiLanguage instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};

ImdbapiListListInterestCategoriesResponse
_$ImdbapiListListInterestCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListListInterestCategoriesResponse(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => ImdbapiInterestCategory.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiListListInterestCategoriesResponseToJson(
  ImdbapiListListInterestCategoriesResponse instance,
) => <String, dynamic>{
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
};

ImdbapiListNameFilmographyResponse _$ImdbapiListNameFilmographyResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListNameFilmographyResponse(
  credits:
      (json['credits'] as List<dynamic>?)
          ?.map((e) => ImdbapiCredit.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListNameFilmographyResponseToJson(
  ImdbapiListNameFilmographyResponse instance,
) => <String, dynamic>{
  'credits': instance.credits?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListNameImagesResponse _$ImdbapiListNameImagesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListNameImagesResponse(
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImdbapiImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListNameImagesResponseToJson(
  ImdbapiListNameImagesResponse instance,
) => <String, dynamic>{
  'images': instance.images?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListNameRelationshipsResponse
_$ImdbapiListNameRelationshipsResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListNameRelationshipsResponse(
      relationships:
          (json['relationships'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ImdbapiNameRelationship.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImdbapiListNameRelationshipsResponseToJson(
  ImdbapiListNameRelationshipsResponse instance,
) => <String, dynamic>{
  'relationships': instance.relationships?.map((e) => e.toJson()).toList(),
};

ImdbapiListNameTriviaResponse _$ImdbapiListNameTriviaResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListNameTriviaResponse(
  triviaEntries:
      (json['triviaEntries'] as List<dynamic>?)
          ?.map((e) => ImdbapiNameTrivia.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListNameTriviaResponseToJson(
  ImdbapiListNameTriviaResponse instance,
) => <String, dynamic>{
  'triviaEntries': instance.triviaEntries?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListStarMetersResponse _$ImdbapiListStarMetersResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListStarMetersResponse(
  names:
      (json['names'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListStarMetersResponseToJson(
  ImdbapiListStarMetersResponse instance,
) => <String, dynamic>{
  'names': instance.names?.map((e) => e.toJson()).toList(),
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleAKAsResponse _$ImdbapiListTitleAKAsResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleAKAsResponse(
  akas:
      (json['akas'] as List<dynamic>?)
          ?.map((e) => ImdbapiAKA.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiListTitleAKAsResponseToJson(
  ImdbapiListTitleAKAsResponse instance,
) => <String, dynamic>{'akas': instance.akas?.map((e) => e.toJson()).toList()};

ImdbapiListTitleAwardNominationsResponse
_$ImdbapiListTitleAwardNominationsResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListTitleAwardNominationsResponse(
      stats: json['stats'] == null
          ? null
          : ImdbapiAwardNominationStats.fromJson(
              json['stats'] as Map<String, dynamic>,
            ),
      awardNominations:
          (json['awardNominations'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ImdbapiAwardNomination.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$ImdbapiListTitleAwardNominationsResponseToJson(
  ImdbapiListTitleAwardNominationsResponse instance,
) => <String, dynamic>{
  'stats': instance.stats?.toJson(),
  'awardNominations': instance.awardNominations
      ?.map((e) => e.toJson())
      .toList(),
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleCertificatesResponse
_$ImdbapiListTitleCertificatesResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListTitleCertificatesResponse(
      certificates:
          (json['certificates'] as List<dynamic>?)
              ?.map(
                (e) => ImdbapiCertificate.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiListTitleCertificatesResponseToJson(
  ImdbapiListTitleCertificatesResponse instance,
) => <String, dynamic>{
  'certificates': instance.certificates?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
};

ImdbapiListTitleCompanyCreditsResponse
_$ImdbapiListTitleCompanyCreditsResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListTitleCompanyCreditsResponse(
      companyCredits:
          (json['companyCredits'] as List<dynamic>?)
              ?.map(
                (e) => ImdbapiCompanyCredit.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      totalCount: (json['totalCount'] as num?)?.toInt(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$ImdbapiListTitleCompanyCreditsResponseToJson(
  ImdbapiListTitleCompanyCreditsResponse instance,
) => <String, dynamic>{
  'companyCredits': instance.companyCredits?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleCreditsResponse _$ImdbapiListTitleCreditsResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleCreditsResponse(
  credits:
      (json['credits'] as List<dynamic>?)
          ?.map((e) => ImdbapiCredit.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListTitleCreditsResponseToJson(
  ImdbapiListTitleCreditsResponse instance,
) => <String, dynamic>{
  'credits': instance.credits?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleEpisodesResponse _$ImdbapiListTitleEpisodesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleEpisodesResponse(
  episodes:
      (json['episodes'] as List<dynamic>?)
          ?.map((e) => ImdbapiEpisode.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListTitleEpisodesResponseToJson(
  ImdbapiListTitleEpisodesResponse instance,
) => <String, dynamic>{
  'episodes': instance.episodes?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleImagesResponse _$ImdbapiListTitleImagesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleImagesResponse(
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImdbapiImage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListTitleImagesResponseToJson(
  ImdbapiListTitleImagesResponse instance,
) => <String, dynamic>{
  'images': instance.images?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleParentsGuideResponse
_$ImdbapiListTitleParentsGuideResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListTitleParentsGuideResponse(
      parentsGuide:
          (json['parentsGuide'] as List<dynamic>?)
              ?.map(
                (e) => ImdbapiParentsGuide.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImdbapiListTitleParentsGuideResponseToJson(
  ImdbapiListTitleParentsGuideResponse instance,
) => <String, dynamic>{
  'parentsGuide': instance.parentsGuide?.map((e) => e.toJson()).toList(),
};

ImdbapiListTitleReleaseDatesResponse
_$ImdbapiListTitleReleaseDatesResponseFromJson(Map<String, dynamic> json) =>
    ImdbapiListTitleReleaseDatesResponse(
      releaseDates:
          (json['releaseDates'] as List<dynamic>?)
              ?.map(
                (e) => ImdbapiReleaseDate.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$ImdbapiListTitleReleaseDatesResponseToJson(
  ImdbapiListTitleReleaseDatesResponse instance,
) => <String, dynamic>{
  'releaseDates': instance.releaseDates?.map((e) => e.toJson()).toList(),
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitleSeasonsResponse _$ImdbapiListTitleSeasonsResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleSeasonsResponse(
  seasons:
      (json['seasons'] as List<dynamic>?)
          ?.map((e) => ImdbapiSeason.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiListTitleSeasonsResponseToJson(
  ImdbapiListTitleSeasonsResponse instance,
) => <String, dynamic>{
  'seasons': instance.seasons?.map((e) => e.toJson()).toList(),
};

ImdbapiListTitleVideosResponse _$ImdbapiListTitleVideosResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitleVideosResponse(
  videos:
      (json['videos'] as List<dynamic>?)
          ?.map((e) => ImdbapiVideo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListTitleVideosResponseToJson(
  ImdbapiListTitleVideosResponse instance,
) => <String, dynamic>{
  'videos': instance.videos?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiListTitlesResponse _$ImdbapiListTitlesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiListTitlesResponse(
  titles:
      (json['titles'] as List<dynamic>?)
          ?.map((e) => ImdbapiTitle.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalCount: (json['totalCount'] as num?)?.toInt(),
  nextPageToken: json['nextPageToken'] as String?,
);

Map<String, dynamic> _$ImdbapiListTitlesResponseToJson(
  ImdbapiListTitlesResponse instance,
) => <String, dynamic>{
  'titles': instance.titles?.map((e) => e.toJson()).toList(),
  'totalCount': instance.totalCount,
  'nextPageToken': instance.nextPageToken,
};

ImdbapiMetacritic _$ImdbapiMetacriticFromJson(Map<String, dynamic> json) =>
    ImdbapiMetacritic(
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toInt(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiMetacriticToJson(ImdbapiMetacritic instance) =>
    <String, dynamic>{
      'url': instance.url,
      'score': instance.score,
      'reviewCount': instance.reviewCount,
    };

ImdbapiMoney _$ImdbapiMoneyFromJson(Map<String, dynamic> json) => ImdbapiMoney(
  amount: json['amount'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$ImdbapiMoneyToJson(ImdbapiMoney instance) =>
    <String, dynamic>{'amount': instance.amount, 'currency': instance.currency};

ImdbapiName _$ImdbapiNameFromJson(Map<String, dynamic> json) => ImdbapiName(
  id: json['id'] as String?,
  displayName: json['displayName'] as String?,
  alternativeNames:
      (json['alternativeNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  primaryImage: json['primaryImage'] == null
      ? null
      : ImdbapiImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
  primaryProfessions:
      (json['primaryProfessions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  biography: json['biography'] as String?,
  heightCm: (json['heightCm'] as num?)?.toInt(),
  birthName: json['birthName'] as String?,
  birthDate: json['birthDate'] == null
      ? null
      : ImdbapiPrecisionDate.fromJson(
          json['birthDate'] as Map<String, dynamic>,
        ),
  birthLocation: json['birthLocation'] as String?,
  deathDate: json['deathDate'] == null
      ? null
      : ImdbapiPrecisionDate.fromJson(
          json['deathDate'] as Map<String, dynamic>,
        ),
  deathLocation: json['deathLocation'] as String?,
  deathReason: json['deathReason'] as String?,
  meterRanking: json['meterRanking'] == null
      ? null
      : ImdbapiNameMeterRanking.fromJson(
          json['meterRanking'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ImdbapiNameToJson(ImdbapiName instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'alternativeNames': instance.alternativeNames,
      'primaryImage': instance.primaryImage?.toJson(),
      'primaryProfessions': instance.primaryProfessions,
      'biography': instance.biography,
      'heightCm': instance.heightCm,
      'birthName': instance.birthName,
      'birthDate': instance.birthDate?.toJson(),
      'birthLocation': instance.birthLocation,
      'deathDate': instance.deathDate?.toJson(),
      'deathLocation': instance.deathLocation,
      'deathReason': instance.deathReason,
      'meterRanking': instance.meterRanking?.toJson(),
    };

ImdbapiNameMeterRanking _$ImdbapiNameMeterRankingFromJson(
  Map<String, dynamic> json,
) => ImdbapiNameMeterRanking(
  currentRank: (json['currentRank'] as num?)?.toInt(),
  changeDirection: json['changeDirection'] as String?,
  difference: (json['difference'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiNameMeterRankingToJson(
  ImdbapiNameMeterRanking instance,
) => <String, dynamic>{
  'currentRank': instance.currentRank,
  'changeDirection': instance.changeDirection,
  'difference': instance.difference,
};

ImdbapiNameRelationship _$ImdbapiNameRelationshipFromJson(
  Map<String, dynamic> json,
) => ImdbapiNameRelationship(
  name: json['name'] == null
      ? null
      : ImdbapiName.fromJson(json['name'] as Map<String, dynamic>),
  relationType: json['relationType'] as String?,
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiNameRelationshipToJson(
  ImdbapiNameRelationship instance,
) => <String, dynamic>{
  'name': instance.name?.toJson(),
  'relationType': instance.relationType,
  'attributes': instance.attributes,
};

ImdbapiNameTrivia _$ImdbapiNameTriviaFromJson(Map<String, dynamic> json) =>
    ImdbapiNameTrivia(
      id: json['id'] as String?,
      text: json['text'] as String?,
      interestCount: (json['interestCount'] as num?)?.toInt(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiNameTriviaToJson(ImdbapiNameTrivia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'interestCount': instance.interestCount,
      'voteCount': instance.voteCount,
    };

ImdbapiOpeningWeekendGross _$ImdbapiOpeningWeekendGrossFromJson(
  Map<String, dynamic> json,
) => ImdbapiOpeningWeekendGross(
  gross: json['gross'] == null
      ? null
      : ImdbapiMoney.fromJson(json['gross'] as Map<String, dynamic>),
  weekendEndDate: json['weekendEndDate'] == null
      ? null
      : ImdbapiPrecisionDate.fromJson(
          json['weekendEndDate'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ImdbapiOpeningWeekendGrossToJson(
  ImdbapiOpeningWeekendGross instance,
) => <String, dynamic>{
  'gross': instance.gross?.toJson(),
  'weekendEndDate': instance.weekendEndDate?.toJson(),
};

ImdbapiParentsGuide _$ImdbapiParentsGuideFromJson(
  Map<String, dynamic> json,
) => ImdbapiParentsGuide(
  category: imdbapiParentsGuideCategoryNullableFromJson(json['category']),
  severityBreakdowns:
      (json['severityBreakdowns'] as List<dynamic>?)
          ?.map(
            (e) =>
                ImdbapiParentsGuideSeverity.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map(
            (e) =>
                ImdbapiParentsGuideReview.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiParentsGuideToJson(
  ImdbapiParentsGuide instance,
) => <String, dynamic>{
  'category': imdbapiParentsGuideCategoryNullableToJson(instance.category),
  'severityBreakdowns': instance.severityBreakdowns
      ?.map((e) => e.toJson())
      .toList(),
  'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
};

ImdbapiParentsGuideReview _$ImdbapiParentsGuideReviewFromJson(
  Map<String, dynamic> json,
) => ImdbapiParentsGuideReview(
  text: json['text'] as String?,
  isSpoiler: json['isSpoiler'] as bool?,
);

Map<String, dynamic> _$ImdbapiParentsGuideReviewToJson(
  ImdbapiParentsGuideReview instance,
) => <String, dynamic>{'text': instance.text, 'isSpoiler': instance.isSpoiler};

ImdbapiParentsGuideSeverity _$ImdbapiParentsGuideSeverityFromJson(
  Map<String, dynamic> json,
) => ImdbapiParentsGuideSeverity(
  severityLevel: json['severityLevel'] as String?,
  voteCount: (json['voteCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiParentsGuideSeverityToJson(
  ImdbapiParentsGuideSeverity instance,
) => <String, dynamic>{
  'severityLevel': instance.severityLevel,
  'voteCount': instance.voteCount,
};

ImdbapiPrecisionDate _$ImdbapiPrecisionDateFromJson(
  Map<String, dynamic> json,
) => ImdbapiPrecisionDate(
  year: (json['year'] as num?)?.toInt(),
  month: (json['month'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiPrecisionDateToJson(
  ImdbapiPrecisionDate instance,
) => <String, dynamic>{
  'year': instance.year,
  'month': instance.month,
  'day': instance.day,
};

ImdbapiRating _$ImdbapiRatingFromJson(Map<String, dynamic> json) =>
    ImdbapiRating(
      aggregateRating: (json['aggregateRating'] as num?)?.toDouble(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiRatingToJson(ImdbapiRating instance) =>
    <String, dynamic>{
      'aggregateRating': instance.aggregateRating,
      'voteCount': instance.voteCount,
    };

ImdbapiReleaseDate _$ImdbapiReleaseDateFromJson(Map<String, dynamic> json) =>
    ImdbapiReleaseDate(
      country: json['country'] == null
          ? null
          : ImdbapiCountry.fromJson(json['country'] as Map<String, dynamic>),
      releaseDate: json['releaseDate'] == null
          ? null
          : ImdbapiPrecisionDate.fromJson(
              json['releaseDate'] as Map<String, dynamic>,
            ),
      attributes:
          (json['attributes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImdbapiReleaseDateToJson(ImdbapiReleaseDate instance) =>
    <String, dynamic>{
      'country': instance.country?.toJson(),
      'releaseDate': instance.releaseDate?.toJson(),
      'attributes': instance.attributes,
    };

ImdbapiSearchTitlesResponse _$ImdbapiSearchTitlesResponseFromJson(
  Map<String, dynamic> json,
) => ImdbapiSearchTitlesResponse(
  titles:
      (json['titles'] as List<dynamic>?)
          ?.map((e) => ImdbapiTitle.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiSearchTitlesResponseToJson(
  ImdbapiSearchTitlesResponse instance,
) => <String, dynamic>{
  'titles': instance.titles?.map((e) => e.toJson()).toList(),
};

ImdbapiSeason _$ImdbapiSeasonFromJson(Map<String, dynamic> json) =>
    ImdbapiSeason(
      season: json['season'] as String?,
      episodeCount: (json['episodeCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImdbapiSeasonToJson(ImdbapiSeason instance) =>
    <String, dynamic>{
      'season': instance.season,
      'episodeCount': instance.episodeCount,
    };

ImdbapiTitle _$ImdbapiTitleFromJson(Map<String, dynamic> json) => ImdbapiTitle(
  id: json['id'] as String?,
  type: json['type'] as String?,
  isAdult: json['isAdult'] as bool?,
  primaryTitle: json['primaryTitle'] as String?,
  originalTitle: json['originalTitle'] as String?,
  primaryImage: json['primaryImage'] == null
      ? null
      : ImdbapiImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
  startYear: (json['startYear'] as num?)?.toInt(),
  endYear: (json['endYear'] as num?)?.toInt(),
  runtimeSeconds: (json['runtimeSeconds'] as num?)?.toInt(),
  genres:
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  rating: json['rating'] == null
      ? null
      : ImdbapiRating.fromJson(json['rating'] as Map<String, dynamic>),
  metacritic: json['metacritic'] == null
      ? null
      : ImdbapiMetacritic.fromJson(json['metacritic'] as Map<String, dynamic>),
  plot: json['plot'] as String?,
  directors:
      (json['directors'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  writers:
      (json['writers'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  stars:
      (json['stars'] as List<dynamic>?)
          ?.map((e) => ImdbapiName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  originCountries:
      (json['originCountries'] as List<dynamic>?)
          ?.map((e) => ImdbapiCountry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  spokenLanguages:
      (json['spokenLanguages'] as List<dynamic>?)
          ?.map((e) => ImdbapiLanguage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  interests:
      (json['interests'] as List<dynamic>?)
          ?.map((e) => ImdbapiInterest.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ImdbapiTitleToJson(
  ImdbapiTitle instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'isAdult': instance.isAdult,
  'primaryTitle': instance.primaryTitle,
  'originalTitle': instance.originalTitle,
  'primaryImage': instance.primaryImage?.toJson(),
  'startYear': instance.startYear,
  'endYear': instance.endYear,
  'runtimeSeconds': instance.runtimeSeconds,
  'genres': instance.genres,
  'rating': instance.rating?.toJson(),
  'metacritic': instance.metacritic?.toJson(),
  'plot': instance.plot,
  'directors': instance.directors?.map((e) => e.toJson()).toList(),
  'writers': instance.writers?.map((e) => e.toJson()).toList(),
  'stars': instance.stars?.map((e) => e.toJson()).toList(),
  'originCountries': instance.originCountries?.map((e) => e.toJson()).toList(),
  'spokenLanguages': instance.spokenLanguages?.map((e) => e.toJson()).toList(),
  'interests': instance.interests?.map((e) => e.toJson()).toList(),
};

ImdbapiVideo _$ImdbapiVideoFromJson(Map<String, dynamic> json) => ImdbapiVideo(
  id: json['id'] as String?,
  type: json['type'] as String?,
  name: json['name'] as String?,
  primaryImage: json['primaryImage'] == null
      ? null
      : ImdbapiImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
  description: json['description'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  runtimeSeconds: (json['runtimeSeconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiVideoToJson(ImdbapiVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'primaryImage': instance.primaryImage?.toJson(),
      'description': instance.description,
      'width': instance.width,
      'height': instance.height,
      'runtimeSeconds': instance.runtimeSeconds,
    };

ImdbapiYearsInvolved _$ImdbapiYearsInvolvedFromJson(
  Map<String, dynamic> json,
) => ImdbapiYearsInvolved(
  startYear: (json['startYear'] as num?)?.toInt(),
  endYear: (json['endYear'] as num?)?.toInt(),
);

Map<String, dynamic> _$ImdbapiYearsInvolvedToJson(
  ImdbapiYearsInvolved instance,
) => <String, dynamic>{
  'startYear': instance.startYear,
  'endYear': instance.endYear,
};

ProtobufAny _$ProtobufAnyFromJson(Map<String, dynamic> json) =>
    ProtobufAny(type: json['@type'] as String?);

Map<String, dynamic> _$ProtobufAnyToJson(ProtobufAny instance) =>
    <String, dynamic>{'@type': instance.type};

RpcStatus _$RpcStatusFromJson(Map<String, dynamic> json) => RpcStatus(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  details:
      (json['details'] as List<dynamic>?)
          ?.map((e) => ProtobufAny.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$RpcStatusToJson(RpcStatus instance) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'details': instance.details?.map((e) => e.toJson()).toList(),
};
