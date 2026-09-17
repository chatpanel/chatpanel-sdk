//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/project.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_list200_response.g.dart';

/// ProjectsList200Response
///
/// Properties:
/// * [ok] 
/// * [projects] 
@BuiltValue()
abstract class ProjectsList200Response implements Built<ProjectsList200Response, ProjectsList200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'projects')
  BuiltList<Project> get projects;

  ProjectsList200Response._();

  factory ProjectsList200Response([void updates(ProjectsList200ResponseBuilder b)]) = _$ProjectsList200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsList200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsList200Response> get serializer => _$ProjectsList200ResponseSerializer();
}

class _$ProjectsList200ResponseSerializer implements PrimitiveSerializer<ProjectsList200Response> {
  @override
  final Iterable<Type> types = const [ProjectsList200Response, _$ProjectsList200Response];

  @override
  final String wireName = r'ProjectsList200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'projects';
    yield serializers.serialize(
      object.projects,
      specifiedType: const FullType(BuiltList, [FullType(Project)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectsList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsList200ResponseBuilder result,
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
        case r'projects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Project)]),
          ) as BuiltList<Project>;
          result.projects.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectsList200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsList200ResponseBuilder();
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


