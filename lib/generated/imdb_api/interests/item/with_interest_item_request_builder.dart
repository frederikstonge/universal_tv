// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/imdbapi_interest.dart';
import '../../models/rpc_status.dart';

/// auto generated
/// Builds and executes requests for operations under \interests\{interestId}
class WithInterestItemRequestBuilder extends BaseRequestBuilder<WithInterestItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithInterestItemRequestBuilder clone() {
        return WithInterestItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithInterestItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithInterestItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/interests/{interestId}", pathParameters) ;
    /// Instantiates a new [WithInterestItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithInterestItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/interests/{interestId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve details of a specific interest using its ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiInterest?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiInterest>(requestInfo, ImdbapiInterest.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve details of a specific interest using its ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
