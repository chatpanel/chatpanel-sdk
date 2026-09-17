//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_job_board200_response.g.dart';

/// ProjectsJobBoard200Response
///
/// Properties:
/// * [ok] 
/// * [jobs] 
@BuiltValue()
abstract class ProjectsJobBoard200Response implements Built<ProjectsJobBoard200Response, ProjectsJobBoard200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'jobs')
  BuiltList<BuiltMap<String, JsonObject?>> get jobs;

  ProjectsJobBoard200Response._();

  factory ProjectsJobBoard200Response([void updates(ProjectsJobBoard200ResponseBuilder b)]) = _$ProjectsJobBoard200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsJobBoard200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsJobBoard200Response> get serializer => _$ProjectsJobBoard200ResponseSerializer();
}

class _$ProjectsJobBoard200ResponseSerializer implements PrimitiveSerializer<ProjectsJobBoard200Response> {
  @override
  final Iterable<Type> types = const [ProjectsJobBoard200Response, _$ProjectsJobBoard200Response];

  @override
  final String wireName = r'ProjectsJobBoard200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsJobBoard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'jobs';
    yield serializers.serialize(
      object.jobs,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectsJobBoard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsJobBoard200ResponseBuilder result,
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
        case r'jobs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.jobs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectsJobBoard200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsJobBoard200ResponseBuilder();
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


