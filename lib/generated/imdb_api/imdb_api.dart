// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:microsoft_kiota_serialization_form/microsoft_kiota_serialization_form.dart';
import 'package:microsoft_kiota_serialization_json/microsoft_kiota_serialization_json.dart';
import 'package:microsoft_kiota_serialization_multipart/microsoft_kiota_serialization_multipart.dart';
import 'package:microsoft_kiota_serialization_text/microsoft_kiota_serialization_text.dart';
import './chart/chart_request_builder.dart';
import './interests/interests_request_builder.dart';
import './names/names_request_builder.dart';
import './namesBatchGet/names_batch_get_request_builder.dart';
import './search/search_request_builder.dart';
import './titles/titles_request_builder.dart';
import './titlesBatchGet/titles_batch_get_request_builder.dart';

/// auto generated
/// The main entry point of the SDK, exposes the configuration and the fluent API.
class ImdbApi extends BaseRequestBuilder<ImdbApi> {
    ///  The chart property
    ChartRequestBuilder get chart {
        return ChartRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The interests property
    InterestsRequestBuilder get interests {
        return InterestsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The names property
    NamesRequestBuilder get names {
        return NamesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The namesBatchGet property
    NamesBatchGetRequestBuilder get namesBatchGet {
        return NamesBatchGetRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The search property
    SearchRequestBuilder get search {
        return SearchRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The titles property
    TitlesRequestBuilder get titles {
        return TitlesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The titlesBatchGet property
    TitlesBatchGetRequestBuilder get titlesBatchGet {
        return TitlesBatchGetRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ImdbApi clone() {
        return ImdbApi(requestAdapter);
    }
    /// Instantiates a new [ImdbApi] and sets the default values.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImdbApi(RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}", {}) {
        ApiClientBuilder.registerDefaultSerializer(JsonSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(TextSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(FormSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(MultipartSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(JsonParseNodeFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(FormParseNodeFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(TextParseNodeFactory.new);
        if (requestAdapter.baseUrl == null || requestAdapter.baseUrl!.isEmpty) {
            requestAdapter.baseUrl = 'https://api.imdbapi.dev';
        }
        pathParameters['baseurl'] = requestAdapter.baseUrl;
    }
}
