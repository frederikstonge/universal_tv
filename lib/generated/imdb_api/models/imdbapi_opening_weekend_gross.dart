// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_money.dart';
import './imdbapi_precision_date.dart';

/// auto generated
class ImdbapiOpeningWeekendGross implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The gross property
    ImdbapiMoney? gross;
    ///  The PrecisionDate message represents a specific date,typically used for birth dates, death dates, or release dates.
    ImdbapiPrecisionDate? weekendEndDate;
    /// Instantiates a new [ImdbapiOpeningWeekendGross] and sets the default values.
    ImdbapiOpeningWeekendGross() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiOpeningWeekendGross createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiOpeningWeekendGross();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gross'] = (node) => gross = node.getObjectValue<ImdbapiMoney>(ImdbapiMoney.createFromDiscriminatorValue);
        deserializerMap['weekendEndDate'] = (node) => weekendEndDate = node.getObjectValue<ImdbapiPrecisionDate>(ImdbapiPrecisionDate.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ImdbapiMoney>('gross', gross);
        writer.writeObjectValue<ImdbapiPrecisionDate>('weekendEndDate', weekendEndDate);
        writer.writeAdditionalData(additionalData);
    }
}
