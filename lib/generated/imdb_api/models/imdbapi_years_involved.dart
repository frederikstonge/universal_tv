// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiYearsInvolved implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The endYear property
    int? endYear;
    ///  The startYear property
    int? startYear;
    /// Instantiates a new [ImdbapiYearsInvolved] and sets the default values.
    ImdbapiYearsInvolved() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiYearsInvolved createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiYearsInvolved();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['endYear'] = (node) => endYear = node.getIntValue();
        deserializerMap['startYear'] = (node) => startYear = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('endYear', endYear);
        writer.writeIntValue('startYear', startYear);
        writer.writeAdditionalData(additionalData);
    }
}
