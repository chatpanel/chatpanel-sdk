//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'engines_list200_response.g.dart';

/// EnginesList200Response
///
/// Properties:
/// * [ok] 
/// * [engines] 
@BuiltValue()
abstract class EnginesList200Response implements Built<EnginesList200Response, EnginesList200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'engines')
  BuiltList<BuiltMap<String, JsonObject?>> get engines;

  EnginesList200Response._();

  factory EnginesList200Response([void updates(EnginesList200ResponseBuilder b)]) = _$EnginesList200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnginesList200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnginesList200Response> get serializer => _$EnginesList200ResponseSerializer();
}

class _$EnginesList200ResponseSerializer implements PrimitiveSerializer<EnginesList200Response> {
  @override
  final Iterable<Type> types = const [EnginesList200Response, _$EnginesList200Response];

  @override
  final String wireName = r'EnginesList200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnginesList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'engines';
    yield serializers.serialize(
      object.engines,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EnginesList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnginesList200ResponseBuilder result,
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
        case r'engines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.engines.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnginesList200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnginesList200ResponseBuilder();
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


