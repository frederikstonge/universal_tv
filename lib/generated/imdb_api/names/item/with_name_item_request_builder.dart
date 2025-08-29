// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/imdbapi_name.dart';
import '../../models/rpc_status.dart';
import './filmography/filmography_request_builder.dart';
import './images/images_request_builder.dart';
import './relationships/relationships_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \names\{nameId}
class WithNameItemRequestBuilder extends BaseRequestBuilder<WithNameItemRequestBuilder> {
    ///  The filmography property
    FilmographyRequestBuilder get filmography {
        return FilmographyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The images property
    ImagesRequestBuilder get images {
        return ImagesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The relationships property
    RelationshipsRequestBuilder get relationships {
        return RelationshipsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithNameItemRequestBuilder clone() {
        return WithNameItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithNameItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNameItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}", pathParameters) ;
    /// Instantiates a new [WithNameItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNameItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve a name's details using its IMDb ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiName?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiName>(requestInfo, ImdbapiName.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve a name's details using its IMDb ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
