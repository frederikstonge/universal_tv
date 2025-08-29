// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/imdbapi_search_titles_response.dart';
import '../../models/rpc_status.dart';
import './titles_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \search\titles
class TitlesRequestBuilder extends BaseRequestBuilder<TitlesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TitlesRequestBuilder clone() {
        return TitlesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TitlesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TitlesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/search/titles?query={query}{&limit*}", pathParameters) ;
    /// Instantiates a new [TitlesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TitlesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/search/titles?query={query}{&limit*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Search for titles using a query string.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiSearchTitlesResponse?> getAsync([void Function(RequestConfiguration<TitlesRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiSearchTitlesResponse>(requestInfo, ImdbapiSearchTitlesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Search for titles using a query string.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<TitlesRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<TitlesRequestBuilderGetQueryParameters>(requestConfiguration, () => TitlesRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
