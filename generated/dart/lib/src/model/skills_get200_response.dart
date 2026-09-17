//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/skill.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skills_get200_response.g.dart';

/// SkillsGet200Response
///
/// Properties:
/// * [skill] 
@BuiltValue()
abstract class SkillsGet200Response implements Built<SkillsGet200Response, SkillsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'skill')
  Skill? get skill;

  SkillsGet200Response._();

  factory SkillsGet200Response([void updates(SkillsGet200ResponseBuilder b)]) = _$SkillsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkillsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkillsGet200Response> get serializer => _$SkillsGet200ResponseSerializer();
}

class _$SkillsGet200ResponseSerializer implements PrimitiveSerializer<SkillsGet200Response> {
  @override
  final Iterable<Type> types = const [SkillsGet200Response, _$SkillsGet200Response];

  @override
  final String wireName = r'SkillsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkillsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'skill';
    yield object.skill == null ? null : serializers.serialize(
      object.skill,
      specifiedType: const FullType.nullable(Skill),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SkillsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkillsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'skill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Skill),
          ) as Skill?;
          if (valueDes == null) continue;
          result.skill = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SkillsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkillsGet200ResponseBuilder();
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


