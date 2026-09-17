//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_handoff_request.g.dart';

/// TeamsHandoffRequest
///
/// Properties:
/// * [taskId] 
/// * [model] 
/// * [by] 
/// * [reason] 
@BuiltValue()
abstract class TeamsHandoffRequest implements Built<TeamsHandoffRequest, TeamsHandoffRequestBuilder> {
  @BuiltValueField(wireName: r'taskId')
  String get taskId;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'by')
  String? get by;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  TeamsHandoffRequest._();

  factory TeamsHandoffRequest([void updates(TeamsHandoffRequestBuilder b)]) = _$TeamsHandoffRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsHandoffRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsHandoffRequest> get serializer => _$TeamsHandoffRequestSerializer();
}

class _$TeamsHandoffRequestSerializer implements PrimitiveSerializer<TeamsHandoffRequest> {
  @override
  final Iterable<Type> types = const [TeamsHandoffRequest, _$TeamsHandoffRequest];

  @override
  final String wireName = r'TeamsHandoffRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsHandoffRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'taskId';
    yield serializers.serialize(
      object.taskId,
      specifiedType: const FullType(String),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsHandoffRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsHandoffRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'taskId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taskId = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsHandoffRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsHandoffRequestBuilder();
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


