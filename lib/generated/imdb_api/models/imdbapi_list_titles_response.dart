// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_title.dart';

/// auto generated
/// Response message for listing titles.
class ImdbapiListTitlesResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    ///  List of titles matching the request criteria.
    Iterable<ImdbapiTitle>? titles;
    ///  Total number of titles matching the request criteria.
    int? totalCount;
    /// Instantiates a new [ImdbapiListTitlesResponse] and sets the default values.
    ImdbapiListTitlesResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitlesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitlesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        deserializerMap['titles'] = (node) => titles = node.getCollectionOfObjectValues<ImdbapiTitle>(ImdbapiTitle.createFromDiscriminatorValue);
        deserializerMap['totalCount'] = (node) => totalCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeCollectionOfObjectValues<ImdbapiTitle>('titles', titles);
        writer.writeIntValue('totalCount', totalCount);
        writer.writeAdditionalData(additionalData);
    }
}
