// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_award_nominations_response.dart';
import '../../../models/rpc_status.dart';
import './award_nominations_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\awardNominations
class AwardNominationsRequestBuilder extends BaseRequestBuilder<AwardNominationsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AwardNominationsRequestBuilder clone() {
        return AwardNominationsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AwardNominationsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AwardNominationsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/awardNominations{?pageSize*,pageToken*}", pathParameters) ;
    /// Instantiates a new [AwardNominationsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AwardNominationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/awardNominations{?pageSize*,pageToken*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the award nominations associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleAwardNominationsResponse?> getAsync([void Function(RequestConfiguration<AwardNominationsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleAwardNominationsResponse>(requestInfo, ImdbapiListTitleAwardNominationsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the award nominations associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AwardNominationsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AwardNominationsRequestBuilderGetQueryParameters>(requestConfiguration, () => AwardNominationsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
