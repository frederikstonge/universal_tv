// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_image.dart';

/// auto generated
/// Video is a message that represents a video associated with a title.
class ImdbapiVideo implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  A description of the video.
    String? description;
    ///  The height of the video in pixels.
    int? height;
    ///  The unique identifier for the video.
    String? id;
    ///  The name of the video.
    String? name;
    ///  The Image message represents an image associated with a person or title in the IMDb database.
    ImdbapiImage? primaryImage;
    ///  The runtime of the video in seconds.
    int? runtimeSeconds;
    ///  The type of the video.
    String? type_;
    ///  The width of the video in pixels.
    int? width;
    /// Instantiates a new [ImdbapiVideo] and sets the default values.
    ImdbapiVideo() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiVideo createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiVideo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['height'] = (node) => height = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['primaryImage'] = (node) => primaryImage = node.getObjectValue<ImdbapiImage>(ImdbapiImage.createFromDiscriminatorValue);
        deserializerMap['runtimeSeconds'] = (node) => runtimeSeconds = node.getIntValue();
        deserializerMap['type'] = (node) => type_ = node.getStringValue();
        deserializerMap['width'] = (node) => width = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeIntValue('height', height);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ImdbapiImage>('primaryImage', primaryImage);
        writer.writeIntValue('runtimeSeconds', runtimeSeconds);
        writer.writeStringValue('type', type_);
        writer.writeIntValue('width', width);
        writer.writeAdditionalData(additionalData);
    }
}
