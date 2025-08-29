// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './starmeter/starmeter_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \chart
class ChartRequestBuilder extends BaseRequestBuilder<ChartRequestBuilder> {
    ///  The starmeter property
    StarmeterRequestBuilder get starmeter {
        return StarmeterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ChartRequestBuilder clone() {
        return ChartRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ChartRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChartRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chart", pathParameters) ;
    /// Instantiates a new [ChartRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChartRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chart", {RequestInformation.rawUrlKey : rawUrl}) ;
}
