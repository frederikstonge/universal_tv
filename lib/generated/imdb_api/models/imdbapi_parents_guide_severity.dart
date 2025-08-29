// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ImdbapiParentsGuideSeverity implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The severityLevel property
    String? severityLevel;
    ///  The voteCount property
    int? voteCount;
    /// Instantiates a new [ImdbapiParentsGuideSeverity] and sets the default values.
    ImdbapiParentsGuideSeverity() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiParentsGuideSeverity createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiParentsGuideSeverity();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['severityLevel'] = (node) => severityLevel = node.getStringValue();
        deserializerMap['voteCount'] = (node) => voteCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('severityLevel', severityLevel);
        writer.writeIntValue('voteCount', voteCount);
        writer.writeAdditionalData(additionalData);
    }
}
