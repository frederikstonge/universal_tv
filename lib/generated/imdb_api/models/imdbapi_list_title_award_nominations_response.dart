// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_award_nomination.dart';
import './imdbapi_award_nomination_stats.dart';

/// auto generated
/// Response message for listing award nominations associated with a title.
class ImdbapiListTitleAwardNominationsResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of award nominations associated with the title.
    Iterable<ImdbapiAwardNomination>? awardNominations;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    ///  The stats property
    ImdbapiAwardNominationStats? stats;
    /// Instantiates a new [ImdbapiListTitleAwardNominationsResponse] and sets the default values.
    ImdbapiListTitleAwardNominationsResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleAwardNominationsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleAwardNominationsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['awardNominations'] = (node) => awardNominations = node.getCollectionOfObjectValues<ImdbapiAwardNomination>(ImdbapiAwardNomination.createFromDiscriminatorValue);
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<ImdbapiAwardNominationStats>(ImdbapiAwardNominationStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiAwardNomination>('awardNominations', awardNominations);
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeObjectValue<ImdbapiAwardNominationStats>('stats', stats);
        writer.writeAdditionalData(additionalData);
    }
}
