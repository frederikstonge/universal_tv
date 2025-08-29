// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/imdbapi_batch_get_titles_response.dart';
import '../models/rpc_status.dart';
import './titles_batch_get_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles:batchGet
class TitlesBatchGetRequestBuilder extends BaseRequestBuilder<TitlesBatchGetRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TitlesBatchGetRequestBuilder clone() {
        return TitlesBatchGetRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TitlesBatchGetRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TitlesBatchGetRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles:batchGet?titleIds={titleIds}", pathParameters) ;
    /// Instantiates a new [TitlesBatchGetRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TitlesBatchGetRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles:batchGet?titleIds={titleIds}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve details of multiple titles using their IMDb IDs.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiBatchGetTitlesResponse?> getAsync([void Function(RequestConfiguration<TitlesBatchGetRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiBatchGetTitlesResponse>(requestInfo, ImdbapiBatchGetTitlesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve details of multiple titles using their IMDb IDs.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<TitlesBatchGetRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<TitlesBatchGetRequestBuilderGetQueryParameters>(requestConfiguration, () => TitlesBatchGetRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
