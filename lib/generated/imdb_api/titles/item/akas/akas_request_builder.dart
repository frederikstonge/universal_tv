// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_a_k_as_response.dart';
import '../../../models/rpc_status.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\akas
class AkasRequestBuilder extends BaseRequestBuilder<AkasRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AkasRequestBuilder clone() {
        return AkasRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AkasRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AkasRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/akas", pathParameters) ;
    /// Instantiates a new [AkasRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AkasRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/akas", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the alternative titles (AKAs) associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleAKAsResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleAKAsResponse>(requestInfo, ImdbapiListTitleAKAsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the alternative titles (AKAs) associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
