// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_name.dart';

/// auto generated
/// The NameRelationship message represents a relationship between two namesin the IMDb database, such as family members, spouses, parents, children, etc.Each relationship includes the related name, the type of relationship,and any additional attributes associated with the relationship.
class ImdbapiNameRelationship implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Additional attributes associated with the relationship.
    Iterable<String>? attributes;
    ///  The Name message represents a person in the IMDb database,such as an actor, director, or producer.
    ImdbapiName? name;
    ///  The type of relationship, such as "spouse", "parent", "child", etc.
    String? relationType;
    /// Instantiates a new [ImdbapiNameRelationship] and sets the default values.
    ImdbapiNameRelationship() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiNameRelationship createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiNameRelationship();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['name'] = (node) => name = node.getObjectValue<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['relationType'] = (node) => relationType = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('attributes', attributes);
        writer.writeObjectValue<ImdbapiName>('name', name);
        writer.writeStringValue('relationType', relationType);
        writer.writeAdditionalData(additionalData);
    }
}
