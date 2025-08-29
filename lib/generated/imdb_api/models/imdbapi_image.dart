// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The Image message represents an image associated with a person or title in the IMDb database.
class ImdbapiImage implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The height of the image in pixels.
    int? height;
    ///  The type of the image, such as "poster", "still_frame", "event", etc.
    String? type_;
    ///  The URL of the image, which can be used to access the image file.
    String? url;
    ///  The width of the image in pixels.
    int? width;
    /// Instantiates a new [ImdbapiImage] and sets the default values.
    ImdbapiImage() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiImage createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiImage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['height'] = (node) => height = node.getIntValue();
        deserializerMap['type'] = (node) => type_ = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['width'] = (node) => width = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('height', height);
        writer.writeStringValue('type', type_);
        writer.writeStringValue('url', url);
        writer.writeIntValue('width', width);
        writer.writeAdditionalData(additionalData);
    }
}
