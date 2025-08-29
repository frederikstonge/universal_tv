// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiAwardNominationStats implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The nominationCount property
    int? nominationCount;
    ///  The winCount property
    int? winCount;
    /// Instantiates a new [ImdbapiAwardNominationStats] and sets the default values.
    ImdbapiAwardNominationStats() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiAwardNominationStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiAwardNominationStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['nominationCount'] = (node) => nominationCount = node.getIntValue();
        deserializerMap['winCount'] = (node) => winCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('nominationCount', nominationCount);
        writer.writeIntValue('winCount', winCount);
        writer.writeAdditionalData(additionalData);
    }
}
