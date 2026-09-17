//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'memory_forget_request.g.dart';

/// MemoryForgetRequest
///
/// Properties:
/// * [query] 
@BuiltValue()
abstract class MemoryForgetRequest implements Built<MemoryForgetRequest, MemoryForgetRequestBuilder> {
  @BuiltValueField(wireName: r'query')
  String get query;

  MemoryForgetRequest._();

  factory MemoryForgetRequest([void updates(MemoryForgetRequestBuilder b)]) = _$MemoryForgetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemoryForgetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemoryForgetRequest> get serializer => _$MemoryForgetRequestSerializer();
}

class _$MemoryForgetRequestSerializer implements PrimitiveSerializer<MemoryForgetRequest> {
  @override
  final Iterable<Type> types = const [MemoryForgetRequest, _$MemoryForgetRequest];

  @override
  final String wireName = r'MemoryForgetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemoryForgetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MemoryForgetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemoryForgetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.query = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MemoryForgetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryForgetRequestBuilder();
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


