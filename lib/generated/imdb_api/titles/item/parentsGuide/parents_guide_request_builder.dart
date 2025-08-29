// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_parents_guide_response.dart';
import '../../../models/rpc_status.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\parentsGuide
class ParentsGuideRequestBuilder extends BaseRequestBuilder<ParentsGuideRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ParentsGuideRequestBuilder clone() {
        return ParentsGuideRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ParentsGuideRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ParentsGuideRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/parentsGuide", pathParameters) ;
    /// Instantiates a new [ParentsGuideRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ParentsGuideRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/parentsGuide", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the parents guide associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleParentsGuideResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleParentsGuideResponse>(requestInfo, ImdbapiListTitleParentsGuideResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the parents guide associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
