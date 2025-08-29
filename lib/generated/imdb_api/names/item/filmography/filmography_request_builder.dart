// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_name_filmography_response.dart';
import '../../../models/rpc_status.dart';
import './filmography_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \names\{nameId}\filmography
class FilmographyRequestBuilder extends BaseRequestBuilder<FilmographyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    FilmographyRequestBuilder clone() {
        return FilmographyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [FilmographyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FilmographyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}/filmography{?categories*,pageSize*,pageToken*}", pathParameters) ;
    /// Instantiates a new [FilmographyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FilmographyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}/filmography{?categories*,pageSize*,pageToken*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the filmography associated with a specific name.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListNameFilmographyResponse?> getAsync([void Function(RequestConfiguration<FilmographyRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListNameFilmographyResponse>(requestInfo, ImdbapiListNameFilmographyResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the filmography associated with a specific name.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<FilmographyRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<FilmographyRequestBuilderGetQueryParameters>(requestConfiguration, () => FilmographyRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
