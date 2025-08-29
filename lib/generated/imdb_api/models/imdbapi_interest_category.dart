// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_interest.dart';

/// auto generated
/// InterestCategory represents a category of interests in the IMDB API.
class ImdbapiInterestCategory implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Unique identifier for the interest category.
    String? category;
    ///  A list of interests that belong to this category.
    Iterable<ImdbapiInterest>? interests;
    /// Instantiates a new [ImdbapiInterestCategory] and sets the default values.
    ImdbapiInterestCategory() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiInterestCategory createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiInterestCategory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['interests'] = (node) => interests = node.getCollectionOfObjectValues<ImdbapiInterest>(ImdbapiInterest.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeCollectionOfObjectValues<ImdbapiInterest>('interests', interests);
        writer.writeAdditionalData(additionalData);
    }
}
