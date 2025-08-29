// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_parents_guide.dart';

/// auto generated
/// Response message for listing parents guide associated with a title.
class ImdbapiListTitleParentsGuideResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of parents guide entries associated with the title.
    Iterable<ImdbapiParentsGuide>? parentsGuide;
    /// Instantiates a new [ImdbapiListTitleParentsGuideResponse] and sets the default values.
    ImdbapiListTitleParentsGuideResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleParentsGuideResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleParentsGuideResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['parentsGuide'] = (node) => parentsGuide = node.getCollectionOfObjectValues<ImdbapiParentsGuide>(ImdbapiParentsGuide.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiParentsGuide>('parentsGuide', parentsGuide);
        writer.writeAdditionalData(additionalData);
    }
}
