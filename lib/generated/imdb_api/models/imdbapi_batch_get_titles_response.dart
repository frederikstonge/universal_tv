// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_title.dart';

/// auto generated
class ImdbapiBatchGetTitlesResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of titles retrieved by their IMDb IDs.
    Iterable<ImdbapiTitle>? titles;
    /// Instantiates a new [ImdbapiBatchGetTitlesResponse] and sets the default values.
    ImdbapiBatchGetTitlesResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiBatchGetTitlesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiBatchGetTitlesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['titles'] = (node) => titles = node.getCollectionOfObjectValues<ImdbapiTitle>(ImdbapiTitle.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiTitle>('titles', titles);
        writer.writeAdditionalData(additionalData);
    }
}
