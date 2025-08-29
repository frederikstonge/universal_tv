// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_event.dart';
import './imdbapi_name.dart';
import './imdbapi_title.dart';

/// auto generated
/// AwardNomination represents a nomination for an award.The unique identifier for the award nomination.  string id = 1  [(google.api.field_visibility).restriction = "INTERNAL"];
class ImdbapiAwardNomination implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The category of the award nomination.
    String? category;
    ///  The event property
    ImdbapiEvent? event;
    ///  Whether the nomination is a winner.
    bool? isWinner;
    ///  The nominees associated with the award nomination.
    Iterable<ImdbapiName>? nominees;
    ///  The text description of the award nomination.
    String? text;
    ///  The titles associated with the award nomination.
    Iterable<ImdbapiTitle>? titles;
    ///  The rank of the winner in the nomination.
    int? winnerRank;
    ///  The year of the award nomination.
    int? year;
    /// Instantiates a new [ImdbapiAwardNomination] and sets the default values.
    ImdbapiAwardNomination() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiAwardNomination createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiAwardNomination();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['event'] = (node) => event = node.getObjectValue<ImdbapiEvent>(ImdbapiEvent.createFromDiscriminatorValue);
        deserializerMap['isWinner'] = (node) => isWinner = node.getBoolValue();
        deserializerMap['nominees'] = (node) => nominees = node.getCollectionOfObjectValues<ImdbapiName>(ImdbapiName.createFromDiscriminatorValue);
        deserializerMap['text'] = (node) => text = node.getStringValue();
        deserializerMap['titles'] = (node) => titles = node.getCollectionOfObjectValues<ImdbapiTitle>(ImdbapiTitle.createFromDiscriminatorValue);
        deserializerMap['winnerRank'] = (node) => winnerRank = node.getIntValue();
        deserializerMap['year'] = (node) => year = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeObjectValue<ImdbapiEvent>('event', event);
        writer.writeBoolValue('isWinner', value:isWinner);
        writer.writeCollectionOfObjectValues<ImdbapiName>('nominees', nominees);
        writer.writeStringValue('text', text);
        writer.writeCollectionOfObjectValues<ImdbapiTitle>('titles', titles);
        writer.writeIntValue('winnerRank', winnerRank);
        writer.writeIntValue('year', year);
        writer.writeAdditionalData(additionalData);
    }
}
