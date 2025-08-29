// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_image.dart';
import './imdbapi_name_meter_ranking.dart';
import './imdbapi_precision_date.dart';

/// auto generated
/// The Name message represents a person in the IMDb database,such as an actor, director, or producer.
class ImdbapiName implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Alternative names for the person, which may include stage names,nicknames, or other variations.
    Iterable<String>? alternativeNames;
    ///  A brief biography or description of the person, which may includetheir career highlights, achievements, and other relevant information.
    String? biography;
    ///  The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
    ImdbapiPrecisionDate? birthDate;
    ///  The birth location of the person, which may include the city and country of birth.
    String? birthLocation;
    ///  The birth name of the person, which may differ from their display name.
    String? birthName;
    ///  The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
    ImdbapiPrecisionDate? deathDate;
    ///  The death location of the person, which may include the city and country of death.
    String? deathLocation;
    ///  The reason for the person's death, if applicable.
    String? deathReason;
    ///  The display name of the person, typically their full name.
    String? displayName;
    ///  The height of the person in centimeters.
    int? heightCm;
    ///  The unique identifier for the name in the IMDb database.
    String? id;
    ///  The NameMeterRanking message represents the IMDb popularity meter rankingfor a person, including their current rank, change direction, and differencefrom the previous measurement.This ranking is used to indicate the popularity of the person over time.
    ImdbapiNameMeterRanking? meterRanking;
    ///  The Image message represents an image associated with a person or title in the IMDb database.
    ImdbapiImage? primaryImage;
    ///  A list of primary professions associated with the person,such as "Actor", "Director", "Producer", etc.
    Iterable<String>? primaryProfessions;
    /// Instantiates a new [ImdbapiName] and sets the default values.
    ImdbapiName() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiName createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiName();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['alternativeNames'] = (node) => alternativeNames = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['biography'] = (node) => biography = node.getStringValue();
        deserializerMap['birthDate'] = (node) => birthDate = node.getObjectValue<ImdbapiPrecisionDate>(ImdbapiPrecisionDate.createFromDiscriminatorValue);
        deserializerMap['birthLocation'] = (node) => birthLocation = node.getStringValue();
        deserializerMap['birthName'] = (node) => birthName = node.getStringValue();
        deserializerMap['deathDate'] = (node) => deathDate = node.getObjectValue<ImdbapiPrecisionDate>(ImdbapiPrecisionDate.createFromDiscriminatorValue);
        deserializerMap['deathLocation'] = (node) => deathLocation = node.getStringValue();
        deserializerMap['deathReason'] = (node) => deathReason = node.getStringValue();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['heightCm'] = (node) => heightCm = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['meterRanking'] = (node) => meterRanking = node.getObjectValue<ImdbapiNameMeterRanking>(ImdbapiNameMeterRanking.createFromDiscriminatorValue);
        deserializerMap['primaryImage'] = (node) => primaryImage = node.getObjectValue<ImdbapiImage>(ImdbapiImage.createFromDiscriminatorValue);
        deserializerMap['primaryProfessions'] = (node) => primaryProfessions = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('alternativeNames', alternativeNames);
        writer.writeStringValue('biography', biography);
        writer.writeObjectValue<ImdbapiPrecisionDate>('birthDate', birthDate);
        writer.writeStringValue('birthLocation', birthLocation);
        writer.writeStringValue('birthName', birthName);
        writer.writeObjectValue<ImdbapiPrecisionDate>('deathDate', deathDate);
        writer.writeStringValue('deathLocation', deathLocation);
        writer.writeStringValue('deathReason', deathReason);
        writer.writeStringValue('displayName', displayName);
        writer.writeIntValue('heightCm', heightCm);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ImdbapiNameMeterRanking>('meterRanking', meterRanking);
        writer.writeObjectValue<ImdbapiImage>('primaryImage', primaryImage);
        writer.writeCollectionOfPrimitiveValues<String?>('primaryProfessions', primaryProfessions);
        writer.writeAdditionalData(additionalData);
    }
}
