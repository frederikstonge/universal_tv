// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/imdbapi_list_title_company_credits_response.dart';
import '../../../models/rpc_status.dart';
import './company_credits_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}\companyCredits
class CompanyCreditsRequestBuilder extends BaseRequestBuilder<CompanyCreditsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CompanyCreditsRequestBuilder clone() {
        return CompanyCreditsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CompanyCreditsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CompanyCreditsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/companyCredits{?categories*,pageSize*,pageToken*}", pathParameters) ;
    /// Instantiates a new [CompanyCreditsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CompanyCreditsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}/companyCredits{?categories*,pageSize*,pageToken*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve the company credits associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiListTitleCompanyCreditsResponse?> getAsync([void Function(RequestConfiguration<CompanyCreditsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiListTitleCompanyCreditsResponse>(requestInfo, ImdbapiListTitleCompanyCreditsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve the company credits associated with a specific title.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<CompanyCreditsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CompanyCreditsRequestBuilderGetQueryParameters>(requestConfiguration, () => CompanyCreditsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
