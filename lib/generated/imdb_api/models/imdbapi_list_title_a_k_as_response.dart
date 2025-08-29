// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_a_k_a.dart';

/// auto generated
/// Response message for listing AKAs (Also Known As) associated with a title.
class ImdbapiListTitleAKAsResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of AKAs associated with the title.
    Iterable<ImdbapiAKA>? akas;
    /// Instantiates a new [ImdbapiListTitleAKAsResponse] and sets the default values.
    ImdbapiListTitleAKAsResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleAKAsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleAKAsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['akas'] = (node) => akas = node.getCollectionOfObjectValues<ImdbapiAKA>(ImdbapiAKA.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiAKA>('akas', akas);
        writer.writeAdditionalData(additionalData);
    }
}
