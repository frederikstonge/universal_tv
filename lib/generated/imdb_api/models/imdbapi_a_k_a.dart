// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_country.dart';
import './imdbapi_language.dart';

/// auto generated
/// The AKA (Also Known As) message represents alternative titlesfor a movie or TV show in different languages and countries.
class ImdbapiAKA implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Additional attributes related to the title,such as "original title", "working title", or "alternative title".
    Iterable<String>? attributes;
    ///  The country property
    ImdbapiCountry? country;
    ///  The AKA (Also Known As) message represents alternative titlesfor a movie or TV show in different languages and countries.
    ImdbapiLanguage? language;
    ///  The display text of the title in the specified language and country.
    String? text;
    /// Instantiates a new [ImdbapiAKA] and sets the default values.
    ImdbapiAKA() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiAKA createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiAKA();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['country'] = (node) => country = node.getObjectValue<ImdbapiCountry>(ImdbapiCountry.createFromDiscriminatorValue);
        deserializerMap['language'] = (node) => language = node.getObjectValue<ImdbapiLanguage>(ImdbapiLanguage.createFromDiscriminatorValue);
        deserializerMap['text'] = (node) => text = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('attributes', attributes);
        writer.writeObjectValue<ImdbapiCountry>('country', country);
        writer.writeObjectValue<ImdbapiLanguage>('language', language);
        writer.writeStringValue('text', text);
        writer.writeAdditionalData(additionalData);
    }
}
