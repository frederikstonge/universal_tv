// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve details of multiple names using their IMDb IDs.
class NamesBatchGetRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Required. List of IMDb name IDs in the format "nm1234567".The maximum number of IDs is 5.
    List<String>? nameIds;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'nameIds' : nameIds,
        };
    }
}
