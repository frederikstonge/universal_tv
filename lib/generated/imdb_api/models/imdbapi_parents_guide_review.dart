// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiParentsGuideReview implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The isSpoiler property
    bool? isSpoiler;
    ///  The text property
    String? text;
    /// Instantiates a new [ImdbapiParentsGuideReview] and sets the default values.
    ImdbapiParentsGuideReview() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiParentsGuideReview createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiParentsGuideReview();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['isSpoiler'] = (node) => isSpoiler = node.getBoolValue();
        deserializerMap['text'] = (node) => text = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('isSpoiler', value:isSpoiler);
        writer.writeStringValue('text', text);
        writer.writeAdditionalData(additionalData);
    }
}
