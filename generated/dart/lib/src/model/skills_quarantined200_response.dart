//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/quarantined_skill.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skills_quarantined200_response.g.dart';

/// SkillsQuarantined200Response
///
/// Properties:
/// * [quarantined] 
@BuiltValue()
abstract class SkillsQuarantined200Response implements Built<SkillsQuarantined200Response, SkillsQuarantined200ResponseBuilder> {
  @BuiltValueField(wireName: r'quarantined')
  BuiltList<QuarantinedSkill> get quarantined;

  SkillsQuarantined200Response._();

  factory SkillsQuarantined200Response([void updates(SkillsQuarantined200ResponseBuilder b)]) = _$SkillsQuarantined200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkillsQuarantined200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkillsQuarantined200Response> get serializer => _$SkillsQuarantined200ResponseSerializer();
}

class _$SkillsQuarantined200ResponseSerializer implements PrimitiveSerializer<SkillsQuarantined200Response> {
  @override
  final Iterable<Type> types = const [SkillsQuarantined200Response, _$SkillsQuarantined200Response];

  @override
  final String wireName = r'SkillsQuarantined200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkillsQuarantined200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quarantined';
    yield serializers.serialize(
      object.quarantined,
      specifiedType: const FullType(BuiltList, [FullType(QuarantinedSkill)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SkillsQuarantined200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkillsQuarantined200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quarantined':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuarantinedSkill)]),
          ) as BuiltList<QuarantinedSkill>;
          result.quarantined.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SkillsQuarantined200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkillsQuarantined200ResponseBuilder();
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


