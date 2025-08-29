// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_credit.dart';

/// auto generated
/// Response message for listing filmography associated with a name.
class ImdbapiListNameFilmographyResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of filmography credits associated with the name.
    Iterable<ImdbapiCredit>? credits;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    ///  Total count of filmography credits associated with the name.
    int? totalCount;
    /// Instantiates a new [ImdbapiListNameFilmographyResponse] and sets the default values.
    ImdbapiListNameFilmographyResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListNameFilmographyResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListNameFilmographyResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['credits'] = (node) => credits = node.getCollectionOfObjectValues<ImdbapiCredit>(ImdbapiCredit.createFromDiscriminatorValue);
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        deserializerMap['totalCount'] = (node) => totalCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiCredit>('credits', credits);
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeIntValue('totalCount', totalCount);
        writer.writeAdditionalData(additionalData);
    }
}
