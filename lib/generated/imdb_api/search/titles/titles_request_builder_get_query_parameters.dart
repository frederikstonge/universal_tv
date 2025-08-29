// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Search for titles using a query string.
class TitlesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. Limit the number of results returned.Maximum is 50.
    int? limit;
    ///  Required. The search query for titles.
    String? query;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'limit' : limit,
            'query' : query,
        };
    }
}
