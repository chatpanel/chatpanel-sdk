//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agents_rate_request.g.dart';

/// AgentsRateRequest
///
/// Properties:
/// * [score] 
/// * [note] 
/// * [about] 
/// * [by] 
/// * [runId] 
/// * [taskId] 
/// * [jobId] 
/// * [refs] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class AgentsRateRequest implements Built<AgentsRateRequest, AgentsRateRequestBuilder> {
  @BuiltValueField(wireName: r'score')
  num get score;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'about')
  String? get about;

  @BuiltValueField(wireName: r'by')
  String? get by;

  @BuiltValueField(wireName: r'runId')
  String? get runId;

  @BuiltValueField(wireName: r'taskId')
  String? get taskId;

  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'refs')
  BuiltMap<String, JsonObject?>? get refs;

  AgentsRateRequest._();

  factory AgentsRateRequest([void updates(AgentsRateRequestBuilder b)]) = _$AgentsRateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentsRateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentsRateRequest> get serializer => _$AgentsRateRequestSerializer();
}

class _$AgentsRateRequestSerializer implements PrimitiveSerializer<AgentsRateRequest> {
  @override
  final Iterable<Type> types = const [AgentsRateRequest, _$AgentsRateRequest];

  @override
  final String wireName = r'AgentsRateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentsRateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
    if (object.about != null) {
      yield r'about';
      yield serializers.serialize(
        object.about,
        specifiedType: const FullType(String),
      );
    }
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
    if (object.runId != null) {
      yield r'runId';
      yield serializers.serialize(
        object.runId,
        specifiedType: const FullType(String),
      );
    }
    if (object.taskId != null) {
      yield r'taskId';
      yield serializers.serialize(
        object.taskId,
        specifiedType: const FullType(String),
      );
    }
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType(String),
      );
    }
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentsRateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentsRateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'about':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.about = valueDes;
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        case r'runId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runId = valueDes;
          break;
        case r'taskId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.taskId = valueDes;
          break;
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jobId = valueDes;
          break;
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentsRateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentsRateRequestBuilder();
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


