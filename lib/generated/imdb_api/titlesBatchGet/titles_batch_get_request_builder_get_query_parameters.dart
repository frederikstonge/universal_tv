// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve details of multiple titles using their IMDb IDs.
class TitlesBatchGetRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  List of IMDb title IDs. Maximum 5 IDs.
    List<String>? titleIds;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'titleIds' : titleIds,
        };
    }
}
