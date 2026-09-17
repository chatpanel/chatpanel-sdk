//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/skill.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skills_list200_response.g.dart';

/// SkillsList200Response
///
/// Properties:
/// * [skills] 
@BuiltValue()
abstract class SkillsList200Response implements Built<SkillsList200Response, SkillsList200ResponseBuilder> {
  @BuiltValueField(wireName: r'skills')
  BuiltList<Skill> get skills;

  SkillsList200Response._();

  factory SkillsList200Response([void updates(SkillsList200ResponseBuilder b)]) = _$SkillsList200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkillsList200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkillsList200Response> get serializer => _$SkillsList200ResponseSerializer();
}

class _$SkillsList200ResponseSerializer implements PrimitiveSerializer<SkillsList200Response> {
  @override
  final Iterable<Type> types = const [SkillsList200Response, _$SkillsList200Response];

  @override
  final String wireName = r'SkillsList200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkillsList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'skills';
    yield serializers.serialize(
      object.skills,
      specifiedType: const FullType(BuiltList, [FullType(Skill)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SkillsList200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkillsList200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'skills':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Skill)]),
          ) as BuiltList<Skill>;
          result.skills.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SkillsList200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkillsList200ResponseBuilder();
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


