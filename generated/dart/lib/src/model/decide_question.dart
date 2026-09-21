//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/decide_question_options_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_question.g.dart';

/// DecideQuestion
///
/// Properties:
/// * [type] 
/// * [instructions] 
/// * [options] - choice: the values to pick from; score: the rubric, in order. A noul has none.
@BuiltValue()
abstract class DecideQuestion implements Built<DecideQuestion, DecideQuestionBuilder> {
  @BuiltValueField(wireName: r'type')
  DecideQuestionTypeEnum get type;
  // enum typeEnum {  choice,  score,  noul,  };

  @BuiltValueField(wireName: r'instructions')
  String get instructions;

  /// choice: the values to pick from; score: the rubric, in order. A noul has none.
  @BuiltValueField(wireName: r'options')
  BuiltList<DecideQuestionOptionsInner>? get options;

  DecideQuestion._();

  factory DecideQuestion([void updates(DecideQuestionBuilder b)]) = _$DecideQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideQuestion> get serializer => _$DecideQuestionSerializer();
}

class _$DecideQuestionSerializer implements PrimitiveSerializer<DecideQuestion> {
  @override
  final Iterable<Type> types = const [DecideQuestion, _$DecideQuestion];

  @override
  final String wireName = r'DecideQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DecideQuestionTypeEnum),
    );
    yield r'instructions';
    yield serializers.serialize(
      object.instructions,
      specifiedType: const FullType(String),
    );
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(DecideQuestionOptionsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideQuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DecideQuestionTypeEnum),
          ) as DecideQuestionTypeEnum;
          result.type = valueDes;
          break;
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instructions = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DecideQuestionOptionsInner)]),
          ) as BuiltList<DecideQuestionOptionsInner>?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecideQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideQuestionBuilder();
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


class DecideQuestionTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'choice')
  static const DecideQuestionTypeEnum choice = _$decideQuestionTypeEnum_choice;
  @BuiltValueEnumConst(wireName: r'score')
  static const DecideQuestionTypeEnum score = _$decideQuestionTypeEnum_score;
  @BuiltValueEnumConst(wireName: r'noul')
  static const DecideQuestionTypeEnum noul = _$decideQuestionTypeEnum_noul;

  static Serializer<DecideQuestionTypeEnum> get serializer => _$decideQuestionTypeEnumSerializer;

  const DecideQuestionTypeEnum._(String name): super(name);

  static BuiltSet<DecideQuestionTypeEnum> get values => _$decideQuestionTypeEnumValues;
  static DecideQuestionTypeEnum valueOf(String name) => _$decideQuestionTypeEnumValueOf(name);
}

