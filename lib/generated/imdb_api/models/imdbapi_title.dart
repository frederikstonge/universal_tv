// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_country.dart';
import './imdbapi_image.dart';
import './imdbapi_interest.dart';
import './imdbapi_language.dart';
import './imdbapi_metacritic.dart';
import './imdbapi_name.dart';
import './imdbapi_rating.dart';

/// auto generated
class ImdbapiTitle implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The list of directors associated with the title, which can include multiple directors.
    Iterable<ImdbapiName>? directors;
    ///  The end_year field is used for titles that have a defined end, such as TV series.
    int? endYear;
    ///  The genres field contains a list of genres associated with the title.
    Iterable<String>? genres;
    ///  The unique identifier for the title.
    String? id;
    ///  The list of interests associated with the title.
    Iterable<ImdbapiInterest>? interests;
    ///  The is_adult field indicates whether the title is intended for adult audiences.
    bool? isAdult;
    ///  Metacritic information for a movie or TV show.
    ImdbapiMetacritic? metacritic;
    ///  The original title of the title, normally which is the title as it was originally released.
    String? originalTitle;
    ///  The list of countries where the title was produced or is associated with.
    Iterable<ImdbapiCountry>? originCountries;
    ///  The plot field contains a brief summary or description of the title's storyline.
    String? plot;
    ///  The Image message represents an image associated with a person or title in the IMDb database.
    ImdbapiImage? primaryImage;
    ///  The primary title of the title, which is typically the most recognized name.
    String? primaryTitle;
    ///  The Rating message represents the aggregate rating and votes count for a title.
    ImdbapiRating? rating;
    ///  The runtime_seconds field contains the total runtime of the title in minutes.
    int? runtimeSeconds;
    ///  The list of languages spoken in the title, which can include multiple languages.
    Iterable<ImdbapiLanguage>? spokenLanguages;
    ///  The list of stars associated with the title, which can include multiple actors or actresses.
    Iterable<ImdbapiName>? stars;
    ///  The start_year field is used for titles that have a defined start, such as movies or TV series.
    int? startYear;
    ///  The type of the title, such as "movie", "tvSeries", "tvEpisode", etc.
    String? type_;
    ///  The list of writers associated with the title, which can include multiple writers.
    Iterable<ImdbapiName>? writers;
    /// Instantiates a new [ImdbapiTitle] and sets the default values.
    ImdbapiTitle() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiTitle createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiTitle();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['directors'] = (node) => directors = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['endYear'] = (node) => endYear = node.getIntValue();
        deserializerMap['genres'] = (node) => genres = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['interests'] = (node) => interests = node.getCollectionOfObjectValues<ImdbapiInterest>(ImdbapiInterest.createFromDiscriminatorValue);
        deserializerMap['isAdult'] = (node) => isAdult = node.getBoolValue();
        deserializerMap['metacritic'] = (node) => metacritic = node.getObjectValue<ImdbapiMetacritic>(ImdbapiMetacritic.createFromDiscriminatorValue);
        deserializerMap['originalTitle'] = (node) => originalTitle = node.getStringValue();
        deserializerMap['originCountries'] = (node) => originCountries = node.getCollectionOfObjectValues<ImdbapiCountry>(ImdbapiCountry.createFromDiscriminatorValue);
        deserializerMap['plot'] = (node) => plot = node.getStringValue();
        deserializerMap['primaryImage'] = (node) => primaryImage = node.getObjectValue<ImdbapiImage>(ImdbapiImage.createFromDiscriminatorValue);
        deserializerMap['primaryTitle'] = (node) => primaryTitle = node.getStringValue();
        deserializerMap['rating'] = (node) => rating = node.getObjectValue<ImdbapiRating>(ImdbapiRating.createFromDiscriminatorValue);
        deserializerMap['runtimeSeconds'] = (node) => runtimeSeconds = node.getIntValue();
        deserializerMap['spokenLanguages'] = (node) => spokenLanguages = node.getCollectionOfObjectValues<ImdbapiLanguage>(ImdbapiLanguage.createFromDiscriminatorValue);
        deserializerMap['stars'] = (node) => stars = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['startYear'] = (node) => startYear = node.getIntValue();
        deserializerMap['type'] = (node) => type_ = node.getStringValue();
        deserializerMap['writers'] = (node) => writers = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiName>('directors', directors);
        writer.writeIntValue('endYear', endYear);
        writer.writeCollectionOfPrimitiveValues<String?>('genres', genres);
        writer.writeStringValue('id', id);
        writer.writeCollectionOfObjectValues<ImdbapiInterest>('interests', interests);
        writer.writeBoolValue('isAdult', value:isAdult);
        writer.writeObjectValue<ImdbapiMetacritic>('metacritic', metacritic);
        writer.writeStringValue('originalTitle', originalTitle);
        writer.writeCollectionOfObjectValues<ImdbapiCountry>('originCountries', originCountries);
        writer.writeStringValue('plot', plot);
        writer.writeObjectValue<ImdbapiImage>('primaryImage', primaryImage);
        writer.writeStringValue('primaryTitle', primaryTitle);
        writer.writeObjectValue<ImdbapiRating>('rating', rating);
        writer.writeIntValue('runtimeSeconds', runtimeSeconds);
        writer.writeCollectionOfObjectValues<ImdbapiLanguage>('spokenLanguages', spokenLanguages);
        writer.writeCollectionOfObjectValues<ImdbapiName>('stars', stars);
        writer.writeIntValue('startYear', startYear);
        writer.writeStringValue('type', type_);
        writer.writeCollectionOfObjectValues<ImdbapiName>('writers', writers);
        writer.writeAdditionalData(additionalData);
    }
}
