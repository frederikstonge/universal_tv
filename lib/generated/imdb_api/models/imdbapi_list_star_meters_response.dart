// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_name.dart';

/// auto generated
/// Response message for listing star meter rankings.
class ImdbapiListStarMetersResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of names with their star meter rankings.
    Iterable<ImdbapiName>? names;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    /// Instantiates a new [ImdbapiListStarMetersResponse] and sets the default values.
    ImdbapiListStarMetersResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListStarMetersResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListStarMetersResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['names'] = (node) => names = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiName>('names', names);
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeAdditionalData(additionalData);
    }
}
