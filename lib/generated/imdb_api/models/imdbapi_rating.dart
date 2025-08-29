// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The Rating message represents the aggregate rating and votes count for a title.
class ImdbapiRating implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The aggregate_rating field contains the average rating of the title,typically on a scale from 1 to 10.
    double? aggregateRating;
    ///  The votes_count field contains the total number of votes cast for the title.
    int? voteCount;
    /// Instantiates a new [ImdbapiRating] and sets the default values.
    ImdbapiRating() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiRating createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiRating();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['aggregateRating'] = (node) => aggregateRating = node.getDoubleValue();
        deserializerMap['voteCount'] = (node) => voteCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('aggregateRating', aggregateRating);
        writer.writeIntValue('voteCount', voteCount);
        writer.writeAdditionalData(additionalData);
    }
}
