// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_name_relationships_response.dart';
import '../../../models/rpc_status.dart';

/// auto generated
/// Builds and executes requests for operations under \names\{nameId}\relationships
class RelationshipsRequestBuilder extends BaseRequestBuilder<RelationshipsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RelationshipsRequestBuilder clone() {
        return RelationshipsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RelationshipsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RelationshipsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}/relationships", pathParameters) ;
    /// Instantiates a new [RelationshipsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RelationshipsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names/{nameId}/relationships", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the relationships associated with a specific name.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListNameRelationshipsResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListNameRelationshipsResponse>(requestInfo, ImdbapiListNameRelationshipsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the relationships associated with a specific name.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
