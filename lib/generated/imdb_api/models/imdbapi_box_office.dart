// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_money.dart';
import './imdbapi_opening_weekend_gross.dart';

/// auto generated
class ImdbapiBoxOffice implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The domesticGross property
    ImdbapiMoney? domesticGross;
    ///  The openingWeekendGross property
    ImdbapiOpeningWeekendGross? openingWeekendGross;
    ///  The productionBudget property
    ImdbapiMoney? productionBudget;
    ///  The worldwideGross property
    ImdbapiMoney? worldwideGross;
    /// Instantiates a new [ImdbapiBoxOffice] and sets the default values.
    ImdbapiBoxOffice() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiBoxOffice createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiBoxOffice();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['domesticGross'] = (node) => domesticGross = node.getObjectValue<ImdbapiMoney>(ImdbapiMoney.createFromDiscriminatorValue);
        deserializerMap['openingWeekendGross'] = (node) => openingWeekendGross = node.getObjectValue<ImdbapiOpeningWeekendGross>(ImdbapiOpeningWeekendGross.createFromDiscriminatorValue);
        deserializerMap['productionBudget'] = (node) => productionBudget = node.getObjectValue<ImdbapiMoney>(ImdbapiMoney.createFromDiscriminatorValue);
        deserializerMap['worldwideGross'] = (node) => worldwideGross = node.getObjectValue<ImdbapiMoney>(ImdbapiMoney.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ImdbapiMoney>('domesticGross', domesticGross);
        writer.writeObjectValue<ImdbapiOpeningWeekendGross>('openingWeekendGross', openingWeekendGross);
        writer.writeObjectValue<ImdbapiMoney>('productionBudget', productionBudget);
        writer.writeObjectValue<ImdbapiMoney>('worldwideGross', worldwideGross);
        writer.writeAdditionalData(additionalData);
    }
}
