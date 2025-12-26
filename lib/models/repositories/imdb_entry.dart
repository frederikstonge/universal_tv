import 'package:dart_mappable/dart_mappable.dart';

import '../../generated/imdb_api/imdb_api.swagger.dart';

part 'imdb_entry.mapper.dart';

@MappableClass()
class ImdbEntry with ImdbEntryMappable {
  final String? id;
  final String? type;
  final String? primaryTitle;
  final String? originalTitle;
  final ImdbImage? primaryImage;
  final int? startYear;
  final int? endYear;
  final int? runtimeSeconds;
  final List<String>? genres;
  final ImdbRating? rating;
  final String? plot;
  final List<ImdbInterestEntry>? interests;

  ImdbEntry({
    this.id,
    this.type,
    this.primaryTitle,
    this.originalTitle,
    this.primaryImage,
    this.startYear,
    this.endYear,
    this.runtimeSeconds,
    this.genres,
    this.rating,
    this.plot,
    this.interests,
  });

  factory ImdbEntry.fromImdbapiTitle(ImdbapiTitle title) {
    return ImdbEntry(
      id: title.id,
      type: title.type,
      primaryTitle: title.primaryTitle,
      originalTitle: title.originalTitle,
      primaryImage: title.primaryImage != null ? ImdbImage.fromImdbapiImage(title.primaryImage!) : null,
      startYear: title.startYear,
      endYear: title.endYear,
      runtimeSeconds: title.runtimeSeconds,
      genres: title.genres,
      rating: title.rating != null ? ImdbRating.fromImdbapiRating(title.rating!) : null,
      plot: title.plot,
      interests: title.interests?.map((e) => ImdbInterestEntry.fromImdbapiInterest(e)).toList(),
    );
  }
}

@MappableClass()
class ImdbInterestEntry with ImdbInterestEntryMappable {
  final String? id;
  final String? name;
  final String? description;
  final bool? isSubgenre;
  final ImdbImage? primaryImage;
  final List<ImdbInterestEntry>? similarInterests;

  ImdbInterestEntry({this.id, this.name, this.description, this.isSubgenre, this.primaryImage, this.similarInterests});

  factory ImdbInterestEntry.fromImdbapiInterest(ImdbapiInterest interest) {
    return ImdbInterestEntry(
      id: interest.id,
      name: interest.name,
      description: interest.description,
      isSubgenre: interest.isSubgenre,
      primaryImage: interest.primaryImage != null ? ImdbImage.fromImdbapiImage(interest.primaryImage!) : null,
      similarInterests: interest.similarInterests?.map((e) => ImdbInterestEntry.fromImdbapiInterest(e)).toList(),
    );
  }
}

@MappableClass()
class ImdbEpisodesEntry with ImdbEpisodesEntryMappable {
  final List<ImdbEpisode>? episodes;
  final int? totalCount;

  ImdbEpisodesEntry({this.episodes, this.totalCount});

  factory ImdbEpisodesEntry.fromImdbapiEpisodes(ImdbapiListTitleEpisodesResponse episodes) {
    return ImdbEpisodesEntry(
      episodes: episodes.episodes
          ?.map(
            (e) => ImdbEpisode(
              id: e.id,
              title: e.title,
              primaryImage: e.primaryImage != null ? ImdbImage.fromImdbapiImage(e.primaryImage!) : null,
              season: e.season,
              episodeNumber: e.episodeNumber,
              runtimeSeconds: e.runtimeSeconds,
              plot: e.plot,
              rating: e.rating != null ? ImdbRating.fromImdbapiRating(e.rating!) : null,
            ),
          )
          .toList(),
      totalCount: episodes.totalCount,
    );
  }
}

@MappableClass()
class ImdbEpisode with ImdbEpisodeMappable {
  final String? id;
  final String? title;
  final ImdbImage? primaryImage;
  final String? season;
  final int? episodeNumber;
  final int? runtimeSeconds;
  final String? plot;
  final ImdbRating? rating;

  ImdbEpisode({
    this.id,
    this.title,
    this.primaryImage,
    this.season,
    this.episodeNumber,
    this.runtimeSeconds,
    this.plot,
    this.rating,
  });
}

@MappableClass()
class ImdbImage with ImdbImageMappable {
  final String? url;
  final int? width;
  final int? height;
  final String? type;

  ImdbImage({this.url, this.width, this.height, this.type});

  factory ImdbImage.fromImdbapiImage(ImdbapiImage image) {
    return ImdbImage(url: image.url, width: image.width, height: image.height, type: image.type);
  }
}

@MappableClass()
class ImdbRating with ImdbRatingMappable {
  final double? aggregateRating;
  final int? voteCount;

  ImdbRating({this.aggregateRating, this.voteCount});

  factory ImdbRating.fromImdbapiRating(ImdbapiRating rating) {
    return ImdbRating(aggregateRating: rating.aggregateRating, voteCount: rating.voteCount);
  }
}
