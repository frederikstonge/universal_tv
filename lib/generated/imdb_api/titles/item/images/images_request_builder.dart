// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_images_response.dart';
import '../../../models/rpc_status.dart';
import './images_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\images
class ImagesRequestBuilder extends BaseRequestBuilder<ImagesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ImagesRequestBuilder clone() {
        return ImagesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ImagesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImagesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/images{?pageSize*,pageToken*,types*}", pathParameters) ;
    /// Instantiates a new [ImagesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImagesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/images{?pageSize*,pageToken*,types*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the images associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleImagesResponse?> getAsync([void Function(RequestConfiguration<ImagesRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleImagesResponse>(requestInfo, ImdbapiListTitleImagesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the images associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ImagesRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ImagesRequestBuilderGetQueryParameters>(requestConfiguration, () => ImagesRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
