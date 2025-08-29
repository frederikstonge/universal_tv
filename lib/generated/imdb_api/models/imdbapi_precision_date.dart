// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
class ImdbapiPrecisionDate implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The day of the date, represented as an integer.
    int? day;
    ///  The month of the date, represented as an integer.
    int? month;
    ///  The year of the date, represented as an integer.
    int? year;
    /// Instantiates a new [ImdbapiPrecisionDate] and sets the default values.
    ImdbapiPrecisionDate() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiPrecisionDate createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiPrecisionDate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['day'] = (node) => day = node.getIntValue();
        deserializerMap['month'] = (node) => month = node.getIntValue();
        deserializerMap['year'] = (node) => year = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('day', day);
        writer.writeIntValue('month', month);
        writer.writeIntValue('year', year);
        writer.writeAdditionalData(additionalData);
    }
}
