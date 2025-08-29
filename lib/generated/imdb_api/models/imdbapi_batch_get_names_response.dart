// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_name.dart';

/// auto generated
/// Response message for batch getting names by their IDs.
class ImdbapiBatchGetNamesResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of names retrieved by their IMDb IDs.
    Iterable<ImdbapiName>? names;
    /// Instantiates a new [ImdbapiBatchGetNamesResponse] and sets the default values.
    ImdbapiBatchGetNamesResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiBatchGetNamesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiBatchGetNamesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['names'] = (node) => names = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiName>('names', names);
        writer.writeAdditionalData(additionalData);
    }
}
