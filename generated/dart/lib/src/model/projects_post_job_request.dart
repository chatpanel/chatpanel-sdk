//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_post_job_request.g.dart';

/// ProjectsPostJobRequest
///
/// Properties:
/// * [job] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [by] 
@BuiltValue()
abstract class ProjectsPostJobRequest implements Built<ProjectsPostJobRequest, ProjectsPostJobRequestBuilder> {
  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'job')
  BuiltMap<String, JsonObject?> get job;

  @BuiltValueField(wireName: r'by')
  String? get by;

  ProjectsPostJobRequest._();

  factory ProjectsPostJobRequest([void updates(ProjectsPostJobRequestBuilder b)]) = _$ProjectsPostJobRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsPostJobRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsPostJobRequest> get serializer => _$ProjectsPostJobRequestSerializer();
}

class _$ProjectsPostJobRequestSerializer implements PrimitiveSerializer<ProjectsPostJobRequest> {
  @override
  final Iterable<Type> types = const [ProjectsPostJobRequest, _$ProjectsPostJobRequest];

  @override
  final String wireName = r'ProjectsPostJobRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsPostJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'job';
    yield serializers.serialize(
      object.job,
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
    ProjectsPostJobRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsPostJobRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'job':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.job.replace(valueDes);
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
  ProjectsPostJobRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsPostJobRequestBuilder();
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


