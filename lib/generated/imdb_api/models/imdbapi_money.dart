// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiMoney implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The amount of money in the box office.
    String? amount;
    ///  The currency of the money.
    String? currency;
    /// Instantiates a new [ImdbapiMoney] and sets the default values.
    ImdbapiMoney() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiMoney createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiMoney();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['amount'] = (node) => amount = node.getStringValue();
        deserializerMap['currency'] = (node) => currency = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('amount', amount);
        writer.writeStringValue('currency', currency);
        writer.writeAdditionalData(additionalData);
    }
}
