// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve the episodes associated with a specific title.
class EpisodesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. The maximum number of episodes to return per page.If not specified, a default value will be used.The value must be between 1 and 50. Default is 20.
    int? pageSize;
    ///  Optional. Token for pagination, if applicable.
    String? pageToken;
    ///  Optional. The season number to filter episodes by.
    String? season;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'pageSize' : pageSize,
            'pageToken' : pageToken,
            'season' : season,
        };
    }
}
