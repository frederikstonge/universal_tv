// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/imdbapi_list_list_interest_categories_response.dart';
import '../models/rpc_status.dart';
import './item/with_interest_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \interests
class InterestsRequestBuilder extends BaseRequestBuilder<InterestsRequestBuilder> {
    /// Gets an item from the ApiSdk.interests.item collection
    ///  [interestId] Required. The ID of the interest to retrieve.
    WithInterestItemRequestBuilder byInterestId(String interestId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('interestId', () => interestId);
        return WithInterestItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    InterestsRequestBuilder clone() {
        return InterestsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InterestsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InterestsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/interests", pathParameters) ;
    /// Instantiates a new [InterestsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InterestsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/interests", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve all interest categories available in the IMDb API.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListListInterestCategoriesResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListListInterestCategoriesResponse>(requestInfo, ImdbapiListListInterestCategoriesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve all interest categories available in the IMDb API.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
