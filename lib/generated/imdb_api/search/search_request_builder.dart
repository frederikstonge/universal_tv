// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './titles/titles_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \search
class SearchRequestBuilder extends BaseRequestBuilder<SearchRequestBuilder> {
    ///  The titles property
    TitlesRequestBuilder get titles {
        return TitlesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SearchRequestBuilder clone() {
        return SearchRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SearchRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SearchRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/search", pathParameters) ;
    /// Instantiates a new [SearchRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SearchRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/search", {RequestInformation.rawUrlKey : rawUrl}) ;
}
