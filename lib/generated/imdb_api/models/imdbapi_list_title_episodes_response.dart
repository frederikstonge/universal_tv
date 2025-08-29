// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_episode.dart';

/// auto generated
class ImdbapiListTitleEpisodesResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  List of episodes associated with the title.
    Iterable<ImdbapiEpisode>? episodes;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    ///  The total number of episodes that have aired for this title.
    int? totalCount;
    /// Instantiates a new [ImdbapiListTitleEpisodesResponse] and sets the default values.
    ImdbapiListTitleEpisodesResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleEpisodesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleEpisodesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['episodes'] = (node) => episodes = node.getCollectionOfObjectValues<ImdbapiEpisode>(ImdbapiEpisode.createFromDiscriminatorValue);
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        deserializerMap['totalCount'] = (node) => totalCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ImdbapiEpisode>('episodes', episodes);
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeIntValue('totalCount', totalCount);
        writer.writeAdditionalData(additionalData);
    }
}
