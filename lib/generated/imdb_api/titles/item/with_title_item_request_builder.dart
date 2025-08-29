// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/imdbapi_title.dart';
import '../../models/rpc_status.dart';
import './akas/akas_request_builder.dart';
import './awardNominations/award_nominations_request_builder.dart';
import './boxOffice/box_office_request_builder.dart';
import './certificates/certificates_request_builder.dart';
import './companyCredits/company_credits_request_builder.dart';
import './credits/credits_request_builder.dart';
import './episodes/episodes_request_builder.dart';
import './images/images_request_builder.dart';
import './parentsGuide/parents_guide_request_builder.dart';
import './releaseDates/release_dates_request_builder.dart';
import './seasons/seasons_request_builder.dart';
import './videos/videos_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \titles\{titleId}
class WithTitleItemRequestBuilder extends BaseRequestBuilder<WithTitleItemRequestBuilder> {
    ///  The akas property
    AkasRequestBuilder get akas {
        return AkasRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The awardNominations property
    AwardNominationsRequestBuilder get awardNominations {
        return AwardNominationsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The boxOffice property
    BoxOfficeRequestBuilder get boxOffice {
        return BoxOfficeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The certificates property
    CertificatesRequestBuilder get certificates {
        return CertificatesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The companyCredits property
    CompanyCreditsRequestBuilder get companyCredits {
        return CompanyCreditsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The credits property
    CreditsRequestBuilder get credits {
        return CreditsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The episodes property
    EpisodesRequestBuilder get episodes {
        return EpisodesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The images property
    ImagesRequestBuilder get images {
        return ImagesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The parentsGuide property
    ParentsGuideRequestBuilder get parentsGuide {
        return ParentsGuideRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The releaseDates property
    ReleaseDatesRequestBuilder get releaseDates {
        return ReleaseDatesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The seasons property
    SeasonsRequestBuilder get seasons {
        return SeasonsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The videos property
    VideosRequestBuilder get videos {
        return VideosRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithTitleItemRequestBuilder clone() {
        return WithTitleItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithTitleItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTitleItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}", pathParameters) ;
    /// Instantiates a new [WithTitleItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTitleItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/titles/{titleId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve a title's details using its IMDb ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImdbapiTitle?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  RpcStatus.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImdbapiTitle>(requestInfo, ImdbapiTitle.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve a title's details using its IMDb ID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
