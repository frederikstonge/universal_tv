// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './protobuf_any.dart';

/// auto generated
class RpcStatus extends ApiException implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The code property
    int? code;
    ///  The details property
    Iterable<ProtobufAny>? details;
    /// Instantiates a new [RpcStatus] and sets the default values.
    RpcStatus( {
        super.message,
        super.statusCode,
        super.responseHeaders,
        super.innerExceptions,
        required this.additionalData,
        this.code,
        this.details,
    });
    /// Creates a copy of the object.
    @override
    RpcStatus copyWith({int? statusCode, String? message, Map<String, List<String>>? responseHeaders, Iterable<Object?>? innerExceptions, Map<String, Object?>? additionalData, int? code, Iterable<ProtobufAny>? details }){
        return RpcStatus(
        message : message ?? this.message, 
        statusCode : statusCode ?? this.statusCode, 
        responseHeaders : responseHeaders ?? this.responseHeaders, 
        innerExceptions : innerExceptions ?? this.innerExceptions, 
        additionalData : additionalData ?? this.additionalData, 
        code : code ?? this.code, 
        details : details ?? this.details, 
        );
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RpcStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return RpcStatus(additionalData: {});
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['code'] = (node) => code = node.getIntValue();
        deserializerMap['details'] = (node) => details = node.getCollectionOfObjectValues<ProtobufAny>(ProtobufAny.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('code', code);
        writer.writeCollectionOfObjectValues<ProtobufAny>('details', details);
        writer.writeAdditionalData(additionalData);
    }
}
