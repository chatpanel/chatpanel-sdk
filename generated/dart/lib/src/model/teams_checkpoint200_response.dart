//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_checkpoint200_response.g.dart';

/// TeamsCheckpoint200Response
///
/// Properties:
/// * [ok] 
/// * [checkpoint] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class TeamsCheckpoint200Response implements Built<TeamsCheckpoint200Response, TeamsCheckpoint200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'checkpoint')
  BuiltMap<String, JsonObject?> get checkpoint;

  TeamsCheckpoint200Response._();

  factory TeamsCheckpoint200Response([void updates(TeamsCheckpoint200ResponseBuilder b)]) = _$TeamsCheckpoint200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsCheckpoint200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsCheckpoint200Response> get serializer => _$TeamsCheckpoint200ResponseSerializer();
}

class _$TeamsCheckpoint200ResponseSerializer implements PrimitiveSerializer<TeamsCheckpoint200Response> {
  @override
  final Iterable<Type> types = const [TeamsCheckpoint200Response, _$TeamsCheckpoint200Response];

  @override
  final String wireName = r'TeamsCheckpoint200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsCheckpoint200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'checkpoint';
    yield serializers.serialize(
      object.checkpoint,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsCheckpoint200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsCheckpoint200ResponseBuilder result,
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
        case r'checkpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.checkpoint.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsCheckpoint200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsCheckpoint200ResponseBuilder();
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


