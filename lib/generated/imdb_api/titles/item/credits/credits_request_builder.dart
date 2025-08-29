// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_credits_response.dart';
import '../../../models/rpc_status.dart';
import './credits_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\credits
class CreditsRequestBuilder extends BaseRequestBuilder<CreditsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CreditsRequestBuilder clone() {
        return CreditsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CreditsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreditsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/credits{?categories*,pageSize*,pageToken*}", pathParameters) ;
    /// Instantiates a new [CreditsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreditsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/credits{?categories*,pageSize*,pageToken*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the credits associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleCreditsResponse?> getAsync([void Function(RequestConfiguration<CreditsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleCreditsResponse>(requestInfo, ImdbapiListTitleCreditsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the credits associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<CreditsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CreditsRequestBuilderGetQueryParameters>(requestConfiguration, () => CreditsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
