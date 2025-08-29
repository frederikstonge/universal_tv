// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_country.dart';

/// auto generated
/// The Certificate message represents a content rating certificate for a title.
class ImdbapiCertificate implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The attributes property
    Iterable<String>? attributes;
    ///  The country property
    ImdbapiCountry? country;
    ///  The rating of the certificate, such as "PG-13", "R", etc.
    String? rating;
    /// Instantiates a new [ImdbapiCertificate] and sets the default values.
    ImdbapiCertificate() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiCertificate createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiCertificate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['country'] = (node) => country = node.getObjectValue<ImdbapiCountry>(ImdbapiCountry.createFromDiscriminatorValue);
        deserializerMap['rating'] = (node) => rating = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('attributes', attributes);
        writer.writeObjectValue<ImdbapiCountry>('country', country);
        writer.writeStringValue('rating', rating);
        writer.writeAdditionalData(additionalData);
    }
}
