// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_sort_by_query_parameter_type.dart';
import './get_sort_order_query_parameter_type.dart';
import './get_types_query_parameter_type.dart';

/// auto generated
/// Retrieve a list of titles with optional filters.
class TitlesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. The ISO 3166-1 alpha-2 country codes to filter titles by.If not specified, titles from all countries are returned.Example: "US" for United States, "GB" for United Kingdom.
    List<String>? countryCodes;
    ///  Optional. The end year for filtering titles.
    int? endYear;
    ///  Optional. The genres to filter titles by.If not specified, titles from all genres are returned.
    List<String>? genres;
    ///  Optional. The IDs of interests to filter titles by.If not specified, titles associated with all interests are returned.
    List<String>? interestIds;
    ///  Optional. The ISO 639-1 or ISO 639-2 language codes to filter titles by.If not specified, titles in all languages are returned.
    List<String>? languageCodes;
    ///  Optional. The maximum rating a title can have to be included.If not specified, titles with any rating are included.The value must be between 0.0 and 10.0.
    double? maxAggregateRating;
    ///  Optional. The maximum number of votes a title can have to be included.If not specified, titles with any number of votes are included.The value must be between 0 and 1,000,000,000.
    int? maxVoteCount;
    ///  Optional. The minimum rating a title must have to be included.If not specified, titles with any rating are included.The value must be between 0.0 and 10.0.
    double? minAggregateRating;
    ///  Optional. The minimum number of votes a title must have to be included.If not specified, titles with any number of votes are included.The value must be between 0 and 1,000,000,000.Default is 0.
    int? minVoteCount;
    ///  Optional. The IDs of names to filter titles by.
    List<String>? nameIds;
    ///  Optional. Token for pagination, if applicable.
    String? pageToken;
    ///  Optional. The sorting order for the titles.If not specified, titles are sorted by popularity. - SORT_BY_POPULARITY: Sort by popularity.This is used to rank titles based on their popularity, which can be influenced by various factorssuch as viewership, ratings, and cultural impact. - SORT_BY_RELEASE_DATE: Sort by release date.This is used to rank titles based on their release dates, with newer titles typically appearingbefore older ones. - SORT_BY_USER_RATING: Sort by user rating.This is used to rank titles based on the average user rating, which reflects the overall audience reception. - SORT_BY_USER_RATING_COUNT: Sort by user rating count.This is used to rank titles based on the number of user ratings they have received,which can indicate the level of engagement or popularity among viewers. - SORT_BY_YEAR: Sort by year.This is used to rank titles based on their release year, with newer titles typically appearing before older ones.
    GetSortByQueryParameterType? sortBy;
    ///  Optional. The sorting order for the titles.If not specified, titles are sorted in ascending order. - ASC: Sort in ascending order. - DESC: Sort in descending order.
    GetSortOrderQueryParameterType? sortOrder;
    ///  Optional. The start year for filtering titles.
    int? startYear;
    ///  Optional. The type of titles to filter by.If not specified, all types are returned. - MOVIE: Represents a movie title. - TV_SERIES: Represents a TV series title. - TV_MINI_SERIES: Represents a TV mini-series title. - TV_SPECIAL: Represents a TV special title. - TV_MOVIE: Represents a TV movie title. - SHORT: Represents a short title. - VIDEO: Represents a video title. - VIDEO_GAME: Represents a video game title.
    List<GetTypesQueryParameterType>? types;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'countryCodes' : countryCodes,
            'endYear' : endYear,
            'genres' : genres,
            'interestIds' : interestIds,
            'languageCodes' : languageCodes,
            'maxAggregateRating' : maxAggregateRating,
            'maxVoteCount' : maxVoteCount,
            'minAggregateRating' : minAggregateRating,
            'minVoteCount' : minVoteCount,
            'nameIds' : nameIds,
            'pageToken' : pageToken,
            'sortBy' : sortBy,
            'sortOrder' : sortOrder,
            'startYear' : startYear,
            'types' : types,
        };
    }
}
