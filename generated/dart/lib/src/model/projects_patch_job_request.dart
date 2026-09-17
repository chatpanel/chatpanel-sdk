//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_patch_job_request.g.dart';

/// ProjectsPatchJobRequest
///
/// Properties:
/// * [patch_] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [by] 
@BuiltValue()
abstract class ProjectsPatchJobRequest implements Built<ProjectsPatchJobRequest, ProjectsPatchJobRequestBuilder> {
  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'patch')
  BuiltMap<String, JsonObject?> get patch_;

  @BuiltValueField(wireName: r'by')
  String? get by;

  ProjectsPatchJobRequest._();

  factory ProjectsPatchJobRequest([void updates(ProjectsPatchJobRequestBuilder b)]) = _$ProjectsPatchJobRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsPatchJobRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsPatchJobRequest> get serializer => _$ProjectsPatchJobRequestSerializer();
}

class _$ProjectsPatchJobRequestSerializer implements PrimitiveSerializer<ProjectsPatchJobRequest> {
  @override
  final Iterable<Type> types = const [ProjectsPatchJobRequest, _$ProjectsPatchJobRequest];

  @override
  final String wireName = r'ProjectsPatchJobRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsPatchJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'patch';
    yield serializers.serialize(
      object.patch_,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectsPatchJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsPatchJobRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'patch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.patch_.replace(valueDes);
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectsPatchJobRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsPatchJobRequestBuilder();
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


