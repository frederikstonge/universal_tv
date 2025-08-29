// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imdbapi_video.dart';

/// auto generated
class ImdbapiListTitleVideosResponse implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Token for the next page of results, if applicable.
    String? nextPageToken;
    ///  Total count of videos associated with the title.
    int? totalCount;
    ///  List of videos associated with the title.
    Iterable<ImdbapiVideo>? videos;
    /// Instantiates a new [ImdbapiListTitleVideosResponse] and sets the default values.
    ImdbapiListTitleVideosResponse() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImdbapiListTitleVideosResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImdbapiListTitleVideosResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['nextPageToken'] = (node) => nextPageToken = node.getStringValue();
        deserializerMap['totalCount'] = (node) => totalCount = node.getIntValue();
        deserializerMap['videos'] = (node) => videos = node.getCollectionOfObjectValues<ImdbapiVideo>(ImdbapiVideo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('nextPageToken', nextPageToken);
        writer.writeIntValue('totalCount', totalCount);
        writer.writeCollectionOfObjectValues<ImdbapiVideo>('videos', videos);
        writer.writeAdditionalData(additionalData);
    }
}
