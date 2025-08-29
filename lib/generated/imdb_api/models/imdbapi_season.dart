// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiSeason implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The episodeCount property
    int? episodeCount;
    ///  The season property
    String? season;
    /// Instantiates a new [ImdbapiSeason] and sets the default values.
    ImdbapiSeason() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiSeason createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiSeason();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['episodeCount'] = (node) => episodeCount = node.getIntValue();
        deserializerMap['season'] = (node) => season = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('episodeCount', episodeCount);
        writer.writeStringValue('season', season);
        writer.writeAdditionalData(additionalData);
    }
}
