// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve the videos associated with a specific title.
class VideosRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. The maximum number of videos to return per page.If not specified, a default value will be used.The value must be between 1 and 50. Default is 20.
    int? pageSize;
    ///  Optional. Token for pagination, if applicable.
    String? pageToken;
    ///  Optional. The types of videos to filter by.If not specified, all types are returned.
    List<String>? types;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'pageSize' : pageSize,
            'pageToken' : pageToken,
            'types' : types,
        };
    }
}
