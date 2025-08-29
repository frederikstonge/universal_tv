// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_interest_category.dart';

/// auto generated
/// Response message for listing interest categories.
class ImdbapiListListInterestCategoriesResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of available interest categories.
    Iterable<ImdbapiInterestCategory>? categories;
    /// Instantiates a new [ImdbapiListListInterestCategoriesResponse] and sets the default values.
    ImdbapiListListInterestCategoriesResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListListInterestCategoriesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListListInterestCategoriesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['categories'] = (node) => categories = node.getCollectionOfObjectValues<ImdbapiInterestCategory>(ImdbapiInterestCategory.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiInterestCategory>('categories', categories);
        writer.writeAdditionalData(additionalData);
    }
}
