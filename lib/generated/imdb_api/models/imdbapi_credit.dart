// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_name.dart';
import './imdbapi_title.dart';

/// auto generated
/// The Credit message represents a credit for a person in a title.
class ImdbapiCredit implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The category of the credit.
    String? category;
    ///  The characters played by the actor/actress in the title.
    Iterable<String>? characters;
    ///  The number of episodes in which the person has appeared.
    int? episodeCount;
    ///  The Name message represents a person in the IMDb database,such as an actor, director, or producer.
    ImdbapiName? name;
    ///  The title property
    ImdbapiTitle? title;
    /// Instantiates a new [ImdbapiCredit] and sets the default values.
    ImdbapiCredit() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiCredit createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiCredit();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['characters'] = (node) => characters = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['episodeCount'] = (node) => episodeCount = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getObjectValue<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['title'] = (node) => title = node.getObjectValue<ImdbapiTitle>(ImdbapiTitle.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeCollectionOfPrimitiveValues<String?>('characters', characters);
        writer.writeIntValue('episodeCount', episodeCount);
        writer.writeObjectValue<ImdbapiName>('name', name);
        writer.writeObjectValue<ImdbapiTitle>('title', title);
        writer.writeAdditionalData(additionalData);
    }
}
