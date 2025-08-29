// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The NameMeterRanking message represents the IMDb popularity meter rankingfor a person, including their current rank, change direction, and differencefrom the previous measurement.This ranking is used to indicate the popularity of the person over time.
class ImdbapiNameMeterRanking implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The direction of the change in rank, which can be "UP", "DOWN", or "none".
    String? changeDirection;
    ///  The current rank of the person in the IMDb popularity meter.
    int? currentRank;
    ///  The difference in rank compared to the previous measurement.Positive for an increase, negative for a decrease, and zero for no change.
    int? difference;
    /// Instantiates a new [ImdbapiNameMeterRanking] and sets the default values.
    ImdbapiNameMeterRanking() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiNameMeterRanking createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiNameMeterRanking();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['changeDirection'] = (node) => changeDirection = node.getStringValue();
        deserializerMap['currentRank'] = (node) => currentRank = node.getIntValue();
        deserializerMap['difference'] = (node) => difference = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('changeDirection', changeDirection);
        writer.writeIntValue('currentRank', currentRank);
        writer.writeIntValue('difference', difference);
        writer.writeAdditionalData(additionalData);
    }
}
