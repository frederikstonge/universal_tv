// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_country.dart';
import './imdbapi_precision_date.dart';

/// auto generated
/// The ReleaseDate message represents the release date of a title in a specific country.
class ImdbapiReleaseDate implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The attributes field contains additional attributes related to the release date.These attributes can include information such asthe format of the release (e.g., "Theatrical", "DVD", "Blu-ray").
    Iterable<String>? attributes;
    ///  The country property
    ImdbapiCountry? country;
    ///  The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
    ImdbapiPrecisionDate? releaseDate;
    /// Instantiates a new [ImdbapiReleaseDate] and sets the default values.
    ImdbapiReleaseDate() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiReleaseDate createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiReleaseDate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['country'] = (node) => country = node.getObjectValue<ImdbapiCountry>(ImdbapiCountry.createFromDiscriminatorValue);
        deserializerMap['releaseDate'] = (node) => releaseDate = node.getObjectValue<ImdbapiPrecisionDate>(ImdbapiPrecisionDate.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('attributes', attributes);
        writer.writeObjectValue<ImdbapiCountry>('country', country);
        writer.writeObjectValue<ImdbapiPrecisionDate>('releaseDate', releaseDate);
        writer.writeAdditionalData(additionalData);
    }
}
