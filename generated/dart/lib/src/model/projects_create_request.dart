//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_create_request.g.dart';

/// ProjectsCreateRequest
///
/// Properties:
/// * [id] 
/// * [project] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [by] 
@BuiltValue()
abstract class ProjectsCreateRequest implements Built<ProjectsCreateRequest, ProjectsCreateRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'project')
  BuiltMap<String, JsonObject?>? get project;

  @BuiltValueField(wireName: r'by')
  String? get by;

  ProjectsCreateRequest._();

  factory ProjectsCreateRequest([void updates(ProjectsCreateRequestBuilder b)]) = _$ProjectsCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsCreateRequest> get serializer => _$ProjectsCreateRequestSerializer();
}

class _$ProjectsCreateRequestSerializer implements PrimitiveSerializer<ProjectsCreateRequest> {
  @override
  final Iterable<Type> types = const [ProjectsCreateRequest, _$ProjectsCreateRequest];

  @override
  final String wireName = r'ProjectsCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.project != null) {
      yield r'project';
      yield serializers.serialize(
        object.project,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
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
    ProjectsCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'project':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.project.replace(valueDes);
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
  ProjectsCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsCreateRequestBuilder();
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


