// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_image.dart';

/// auto generated
/// Interest represents a specific interest in the IMDB API.
class ImdbapiInterest implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  A brief description of the interest, which can include details about the genre or type.
    String? description;
    ///  Unique identifier for the interest.
    String? id;
    ///  Indicates whether the interest is a subgenre of another genre.
    bool? isSubgenre;
    ///  The name of the interest, e.g., "Action", "Action Epic", "Adult Animation", etc.
    String? name;
    ///  The Image message represents an image associated with a person or title in the IMDb database.
    ImdbapiImage? primaryImage;
    ///  A list of similar interests that are related to this interest.
    Iterable<ImdbapiInterest>? similarInterests;
    /// Instantiates a new [ImdbapiInterest] and sets the default values.
    ImdbapiInterest() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiInterest createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiInterest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isSubgenre'] = (node) => isSubgenre = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['primaryImage'] = (node) => primaryImage = node.getObjectValue<ImdbapiImage>(ImdbapiImage.createFromDiscriminatorValue);
        deserializerMap['similarInterests'] = (node) => similarInterests = node.getCollectionOfObjectValues<ImdbapiInterest>(ImdbapiInterest.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isSubgenre', value:isSubgenre);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ImdbapiImage>('primaryImage', primaryImage);
        writer.writeCollectionOfObjectValues<ImdbapiInterest>('similarInterests', similarInterests);
        writer.writeAdditionalData(additionalData);
    }
}
