// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_image.dart';
import './imdbapi_precision_date.dart';
import './imdbapi_rating.dart';

/// auto generated
class ImdbapiEpisode implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The episodeNumber property
    int? episodeNumber;
    ///  The id property
    String? id;
    ///  The plot property
    String? plot;
    ///  The Image message represents an image associated with a person or title in the IMDb database.
    ImdbapiImage? primaryImage;
    ///  The Rating message represents the aggregate rating and votes count for a title.
    ImdbapiRating? rating;
    ///  The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
    ImdbapiPrecisionDate? releaseDate;
    ///  The runtimeSeconds property
    int? runtimeSeconds;
    ///  The season property
    String? season;
    ///  The title property
    String? title;
    /// Instantiates a new [ImdbapiEpisode] and sets the default values.
    ImdbapiEpisode() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiEpisode createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiEpisode();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['episodeNumber'] = (node) => episodeNumber = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['plot'] = (node) => plot = node.getStringValue();
        deserializerMap['primaryImage'] = (node) => primaryImage = node.getObjectValue<ImdbapiImage>(ImdbapiImage.createFromDiscriminatorValue);
        deserializerMap['rating'] = (node) => rating = node.getObjectValue<ImdbapiRating>(ImdbapiRating.createFromDiscriminatorValue);
        deserializerMap['releaseDate'] = (node) => releaseDate = node.getObjectValue<ImdbapiPrecisionDate>(ImdbapiPrecisionDate.createFromDiscriminatorValue);
        deserializerMap['runtimeSeconds'] = (node) => runtimeSeconds = node.getIntValue();
        deserializerMap['season'] = (node) => season = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('episodeNumber', episodeNumber);
        writer.writeStringValue('id', id);
        writer.writeStringValue('plot', plot);
        writer.writeObjectValue<ImdbapiImage>('primaryImage', primaryImage);
        writer.writeObjectValue<ImdbapiRating>('rating', rating);
        writer.writeObjectValue<ImdbapiPrecisionDate>('releaseDate', releaseDate);
        writer.writeIntValue('runtimeSeconds', runtimeSeconds);
        writer.writeStringValue('season', season);
        writer.writeStringValue('title', title);
        writer.writeAdditionalData(additionalData);
    }
}
