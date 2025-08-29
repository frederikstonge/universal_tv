// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_name_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \names
class NamesRequestBuilder extends BaseRequestBuilder<NamesRequestBuilder> {
    /// Gets an item from the ApiSdk.names.item collection
    ///  [nameId] Required. IMDB name ID in the format "nm1234567".
    WithNameItemRequestBuilder byNameId(String nameId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('nameId', () => nameId);
        return WithNameItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    NamesRequestBuilder clone() {
        return NamesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NamesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NamesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names", pathParameters) ;
    /// Instantiates a new [NamesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NamesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/names", {RequestInformation.rawUrlKey : rawUrl}) ;
}
