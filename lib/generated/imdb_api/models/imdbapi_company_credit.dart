// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_company.dart';
import './imdbapi_country.dart';
import './imdbapi_years_involved.dart';

/// auto generated
class ImdbapiCompanyCredit implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The attributes property
    Iterable<String>? attributes;
    ///  Category of the company credit, such as production, sales, distribution, etc.
    String? category;
    ///  The company property
    ImdbapiCompany? company;
    ///  Countries where the company is based or operates.
    Iterable<ImdbapiCountry>? countries;
    ///  The yearsInvolved property
    ImdbapiYearsInvolved? yearsInvolved;
    /// Instantiates a new [ImdbapiCompanyCredit] and sets the default values.
    ImdbapiCompanyCredit() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiCompanyCredit createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiCompanyCredit();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['company'] = (node) => company = node.getObjectValue<ImdbapiCompany>(ImdbapiCompany.createFromDiscriminatorValue);
        deserializerMap['countries'] = (node) => countries = node.getCollectionOfObjectValues<ImdbapiCountry>(ImdbapiCountry.createFromDiscriminatorValue);
        deserializerMap['yearsInvolved'] = (node) => yearsInvolved = node.getObjectValue<ImdbapiYearsInvolved>(ImdbapiYearsInvolved.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('attributes', attributes);
        writer.writeStringValue('category', category);
        writer.writeObjectValue<ImdbapiCompany>('company', company);
        writer.writeCollectionOfObjectValues<ImdbapiCountry>('countries', countries);
        writer.writeObjectValue<ImdbapiYearsInvolved>('yearsInvolved', yearsInvolved);
        writer.writeAdditionalData(additionalData);
    }
}
