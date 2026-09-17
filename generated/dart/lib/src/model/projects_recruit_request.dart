//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projects_recruit_request.g.dart';

/// ProjectsRecruitRequest
///
/// Properties:
/// * [by] 
/// * [reach] 
/// * [chatModel] 
/// * [evaluation] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [text] 
@BuiltValue()
abstract class ProjectsRecruitRequest implements Built<ProjectsRecruitRequest, ProjectsRecruitRequestBuilder> {
  @BuiltValueField(wireName: r'by')
  String? get by;

  @BuiltValueField(wireName: r'reach')
  String? get reach;

  @BuiltValueField(wireName: r'chatModel')
  String? get chatModel;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'evaluation')
  BuiltMap<String, JsonObject?>? get evaluation;

  @BuiltValueField(wireName: r'text')
  String? get text;

  ProjectsRecruitRequest._();

  factory ProjectsRecruitRequest([void updates(ProjectsRecruitRequestBuilder b)]) = _$ProjectsRecruitRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectsRecruitRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectsRecruitRequest> get serializer => _$ProjectsRecruitRequestSerializer();
}

class _$ProjectsRecruitRequestSerializer implements PrimitiveSerializer<ProjectsRecruitRequest> {
  @override
  final Iterable<Type> types = const [ProjectsRecruitRequest, _$ProjectsRecruitRequest];

  @override
  final String wireName = r'ProjectsRecruitRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectsRecruitRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
    if (object.reach != null) {
      yield r'reach';
      yield serializers.serialize(
        object.reach,
        specifiedType: const FullType(String),
      );
    }
    if (object.chatModel != null) {
      yield r'chatModel';
      yield serializers.serialize(
        object.chatModel,
        specifiedType: const FullType(String),
      );
    }
    if (object.evaluation != null) {
      yield r'evaluation';
      yield serializers.serialize(
        object.evaluation,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectsRecruitRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectsRecruitRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        case r'reach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reach = valueDes;
          break;
        case r'chatModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chatModel = valueDes;
          break;
        case r'evaluation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.evaluation.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectsRecruitRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectsRecruitRequestBuilder();
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


