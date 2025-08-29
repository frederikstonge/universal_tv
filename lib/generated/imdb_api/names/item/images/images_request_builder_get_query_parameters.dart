// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Retrieve the images associated with a specific name.
class ImagesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Optional. The maximum number of images to return per page.If not specified, a default value will be used.The value must be between 1 and 50. Default is 20.
    int? pageSize;
    ///  Optional. Token for pagination, if applicable.
    String? pageToken;
    ///  Optional. The types of images to filter by.If not specified, all types are returned.
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
