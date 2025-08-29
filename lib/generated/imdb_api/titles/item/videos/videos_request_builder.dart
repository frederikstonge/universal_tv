// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_videos_response.dart';
import '../../../models/rpc_status.dart';
import './videos_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\videos
class VideosRequestBuilder extends BaseRequestBuilder<VideosRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    VideosRequestBuilder clone() {
        return VideosRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [VideosRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VideosRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/videos{?pageSize*,pageToken*,types*}", pathParameters) ;
    /// Instantiates a new [VideosRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VideosRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/videos{?pageSize*,pageToken*,types*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the videos associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleVideosResponse?> getAsync([void Function(RequestConfiguration<VideosRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleVideosResponse>(requestInfo, ImdbapiListTitleVideosResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the videos associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<VideosRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<VideosRequestBuilderGetQueryParameters>(requestConfiguration, () => VideosRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
