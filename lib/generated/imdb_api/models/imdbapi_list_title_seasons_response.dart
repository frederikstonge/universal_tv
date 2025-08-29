// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_season.dart';

/// auto generated
class ImdbapiListTitleSeasonsResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of seasons associated with the title.
    Iterable<ImdbapiSeason>? seasons;
    /// Instantiates a new [ImdbapiListTitleSeasonsResponse] and sets the default values.
    ImdbapiListTitleSeasonsResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleSeasonsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleSeasonsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['seasons'] = (node) => seasons = node.getCollectionOfObjectValues<ImdbapiSeason>(ImdbapiSeason.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiSeason>('seasons', seasons);
        writer.writeAdditionalData(additionalData);
    }
}
