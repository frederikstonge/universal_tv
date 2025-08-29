// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_parents_guide_category.dart';
import './imdbapi_parents_guide_review.dart';
import './imdbapi_parents_guide_severity.dart';

/// auto generated
class ImdbapiParentsGuide implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  ParentsGuideCategory defines the categories for the Parents Guide. - SEXUAL_CONTENT: Sex & Nudity - VIOLENCE: Violence & Gore - PROFANITY: Profanity - ALCOHOL_DRUGS: Alcohol, Drugs & Smoking - FRIGHTENING_INTENSE_SCENES: Frightening & Intense Scenes
    ImdbapiParentsGuideCategory? category;
    ///  The reviews property
    Iterable<ImdbapiParentsGuideReview>? reviews;
    ///  The severityBreakdowns property
    Iterable<ImdbapiParentsGuideSeverity>? severityBreakdowns;
    /// Instantiates a new [ImdbapiParentsGuide] and sets the default values.
    ImdbapiParentsGuide() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiParentsGuide createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiParentsGuide();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getEnumValue<ImdbapiParentsGuideCategory>((stringValue) => ImdbapiParentsGuideCategory.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['reviews'] = (node) => reviews = node.getCollectionOfObjectValues<ImdbapiParentsGuideReview>(ImdbapiParentsGuideReview.createFromDiscriminatorValue);
        deserializerMap['severityBreakdowns'] = (node) => severityBreakdowns = node.getCollectionOfObjectValues<ImdbapiParentsGuideSeverity>(ImdbapiParentsGuideSeverity.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<ImdbapiParentsGuideCategory>('category', category, (e) => e?.value);
        writer.writeCollectionOfObjectValues<ImdbapiParentsGuideReview>('reviews', reviews);
        writer.writeCollectionOfObjectValues<ImdbapiParentsGuideSeverity>('severityBreakdowns', severityBreakdowns);
        writer.writeAdditionalData(additionalData);
    }
}
