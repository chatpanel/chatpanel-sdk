//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/detected_entity.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detect_response.g.dart';

/// DetectResponse
///
/// Properties:
/// * [entities] 
/// * [model] 
/// * [ms] 
/// * [runtime] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class DetectResponse implements Built<DetectResponse, DetectResponseBuilder> {
  @BuiltValueField(wireName: r'entities')
  BuiltList<DetectedEntity> get entities;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'runtime')
  BuiltMap<String, JsonObject?>? get runtime;

  DetectResponse._();

  factory DetectResponse([void updates(DetectResponseBuilder b)]) = _$DetectResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DetectResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DetectResponse> get serializer => _$DetectResponseSerializer();
}

class _$DetectResponseSerializer implements PrimitiveSerializer<DetectResponse> {
  @override
  final Iterable<Type> types = const [DetectResponse, _$DetectResponse];

  @override
  final String wireName = r'DetectResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DetectResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entities';
    yield serializers.serialize(
      object.entities,
      specifiedType: const FullType(BuiltList, [FullType(DetectedEntity)]),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DetectResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DetectResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DetectedEntity)]),
          ) as BuiltList<DetectedEntity>;
          result.entities.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.runtime.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DetectResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectResponseBuilder();
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


