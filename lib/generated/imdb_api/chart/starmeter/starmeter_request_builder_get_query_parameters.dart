// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve the star meter rankings for names.
class StarmeterRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. Token for pagination, if applicable.
    String? pageToken;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'pageToken' : pageToken,
        };
    }
}
