// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/imdbapi_list_star_meters_response.dart';
import '../../models/rpc_status.dart';
import './starmeter_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \chart\starmeter
class StarmeterRequestBuilder extends BaseRequestBuilder<StarmeterRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StarmeterRequestBuilder clone() {
        return StarmeterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StarmeterRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StarmeterRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chart/starmeter{?pageToken*}", pathParameters) ;
    /// Instantiates a new [StarmeterRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StarmeterRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chart/starmeter{?pageToken*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the star meter rankings for names.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListStarMetersResponse?> getAsync([void Function(RequestConfiguration<StarmeterRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListStarMetersResponse>(requestInfo, ImdbapiListStarMetersResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the star meter rankings for names.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<StarmeterRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<StarmeterRequestBuilderGetQueryParameters>(requestConfiguration, () => StarmeterRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
