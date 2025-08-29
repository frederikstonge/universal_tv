// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Metacritic information for a movie or TV show.
class ImdbapiMetacritic implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Number of reviews.
    int? reviewCount;
    ///  Metacritic score.
    int? score;
    ///  Metacritic URL.
    String? url;
    /// Instantiates a new [ImdbapiMetacritic] and sets the default values.
    ImdbapiMetacritic() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiMetacritic createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiMetacritic();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['reviewCount'] = (node) => reviewCount = node.getIntValue();
        deserializerMap['score'] = (node) => score = node.getIntValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('reviewCount', reviewCount);
        writer.writeIntValue('score', score);
        writer.writeStringValue('url', url);
        writer.writeAdditionalData(additionalData);
    }
}
