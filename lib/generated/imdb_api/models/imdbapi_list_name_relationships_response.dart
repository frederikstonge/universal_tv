// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_name_relationship.dart';

/// auto generated
/// Response message for listing relationships associated with a name.
class ImdbapiListNameRelationshipsResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of relationships associated with the name.
    Iterable<ImdbapiNameRelationship>? relationships;
    /// Instantiates a new [ImdbapiListNameRelationshipsResponse] and sets the default values.
    ImdbapiListNameRelationshipsResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListNameRelationshipsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListNameRelationshipsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['relationships'] = (node) => relationships = node.getCollectionOfObjectValues<ImdbapiNameRelationship>(ImdbapiNameRelationship.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiNameRelationship>('relationships', relationships);
        writer.writeAdditionalData(additionalData);
    }
}
