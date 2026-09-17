//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway_pair_request.g.dart';

/// GatewayPairRequest
///
/// Properties:
/// * [code] - The 6-digit code from `chatpanel-gateway pair`.
@BuiltValue()
abstract class GatewayPairRequest implements Built<GatewayPairRequest, GatewayPairRequestBuilder> {
  /// The 6-digit code from `chatpanel-gateway pair`.
  @BuiltValueField(wireName: r'code')
  String get code;

  GatewayPairRequest._();

  factory GatewayPairRequest([void updates(GatewayPairRequestBuilder b)]) = _$GatewayPairRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GatewayPairRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GatewayPairRequest> get serializer => _$GatewayPairRequestSerializer();
}

class _$GatewayPairRequestSerializer implements PrimitiveSerializer<GatewayPairRequest> {
  @override
  final Iterable<Type> types = const [GatewayPairRequest, _$GatewayPairRequest];

  @override
  final String wireName = r'GatewayPairRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GatewayPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GatewayPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GatewayPairRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GatewayPairRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayPairRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


