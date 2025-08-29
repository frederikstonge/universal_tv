// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/imdbapi_batch_get_names_response.dart';
import '../models/rpc_status.dart';
import './names_batch_get_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \names:batchGet
class NamesBatchGetRequestBuilder extends BaseRequestBuilder<NamesBatchGetRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NamesBatchGetRequestBuilder clone() {
        return NamesBatchGetRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NamesBatchGetRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NamesBatchGetRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names:batchGet?nameIds={nameIds}", pathParameters) ;
    /// Instantiates a new [NamesBatchGetRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NamesBatchGetRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names:batchGet?nameIds={nameIds}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve details of multiple names using their IMDb IDs.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiBatchGetNamesResponse?> getAsync([void Function(RequestConfiguration<NamesBatchGetRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiBatchGetNamesResponse>(requestInfo, ImdbapiBatchGetNamesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve details of multiple names using their IMDb IDs.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<NamesBatchGetRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NamesBatchGetRequestBuilderGetQueryParameters>(requestConfiguration, () => NamesBatchGetRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
