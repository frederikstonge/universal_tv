// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_episodes_response.dart';
import '../../../models/rpc_status.dart';
import './episodes_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\episodes
class EpisodesRequestBuilder extends BaseRequestBuilder<EpisodesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    EpisodesRequestBuilder clone() {
        return EpisodesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [EpisodesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EpisodesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/episodes{?pageSize*,pageToken*,season*}", pathParameters) ;
    /// Instantiates a new [EpisodesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EpisodesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/episodes{?pageSize*,pageToken*,season*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the episodes associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleEpisodesResponse?> getAsync([void Function(RequestConfiguration<EpisodesRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleEpisodesResponse>(requestInfo, ImdbapiListTitleEpisodesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the episodes associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<EpisodesRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<EpisodesRequestBuilderGetQueryParameters>(requestConfiguration, () => EpisodesRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
