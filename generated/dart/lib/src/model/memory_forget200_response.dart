//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'memory_forget200_response.g.dart';

/// MemoryForget200Response
///
/// Properties:
/// * [ok] 
/// * [removed] 
/// * [size] 
@BuiltValue()
abstract class MemoryForget200Response implements Built<MemoryForget200Response, MemoryForget200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'removed')
  int get removed;

  @BuiltValueField(wireName: r'size')
  int get size;

  MemoryForget200Response._();

  factory MemoryForget200Response([void updates(MemoryForget200ResponseBuilder b)]) = _$MemoryForget200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemoryForget200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemoryForget200Response> get serializer => _$MemoryForget200ResponseSerializer();
}

class _$MemoryForget200ResponseSerializer implements PrimitiveSerializer<MemoryForget200Response> {
  @override
  final Iterable<Type> types = const [MemoryForget200Response, _$MemoryForget200Response];

  @override
  final String wireName = r'MemoryForget200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemoryForget200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'removed';
    yield serializers.serialize(
      object.removed,
      specifiedType: const FullType(int),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MemoryForget200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemoryForget200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.removed = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MemoryForget200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryForget200ResponseBuilder();
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


