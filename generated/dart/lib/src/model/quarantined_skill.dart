//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quarantined_skill.g.dart';

/// QuarantinedSkill
///
/// Properties:
/// * [id] 
/// * [path] 
/// * [source_] 
/// * [verdict] 
@BuiltValue()
abstract class QuarantinedSkill implements Built<QuarantinedSkill, QuarantinedSkillBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'verdict')
  QuarantinedSkillVerdictEnum? get verdict;
  // enum verdictEnum {  suspicious,  dangerous,  };

  QuarantinedSkill._();

  factory QuarantinedSkill([void updates(QuarantinedSkillBuilder b)]) = _$QuarantinedSkill;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuarantinedSkillBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuarantinedSkill> get serializer => _$QuarantinedSkillSerializer();
}

class _$QuarantinedSkillSerializer implements PrimitiveSerializer<QuarantinedSkill> {
  @override
  final Iterable<Type> types = const [QuarantinedSkill, _$QuarantinedSkill];

  @override
  final String wireName = r'QuarantinedSkill';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuarantinedSkill object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(QuarantinedSkillVerdictEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuarantinedSkill object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuarantinedSkillBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(QuarantinedSkillVerdictEnum),
          ) as QuarantinedSkillVerdictEnum?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuarantinedSkill deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuarantinedSkillBuilder();
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


class QuarantinedSkillVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'suspicious')
  static const QuarantinedSkillVerdictEnum suspicious = _$quarantinedSkillVerdictEnum_suspicious;
  @BuiltValueEnumConst(wireName: r'dangerous')
  static const QuarantinedSkillVerdictEnum dangerous = _$quarantinedSkillVerdictEnum_dangerous;

  static Serializer<QuarantinedSkillVerdictEnum> get serializer => _$quarantinedSkillVerdictEnumSerializer;

  const QuarantinedSkillVerdictEnum._(String name): super(name);

  static BuiltSet<QuarantinedSkillVerdictEnum> get values => _$quarantinedSkillVerdictEnumValues;
  static QuarantinedSkillVerdictEnum valueOf(String name) => _$quarantinedSkillVerdictEnumValueOf(name);
}

