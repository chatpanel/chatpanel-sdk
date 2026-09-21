//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/decide_answer_option.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_answer.g.dart';

/// DecideAnswer
///
/// Properties:
/// * [value] - choice: the option picked; score: a number on the rubric; noul: a boolean.
/// * [p] - The probability of `value` — read it as one only when the response says `calibrated`.
/// * [options] - The whole distribution.
/// * [confidence] - The provider's own confidence, when it reports one.
@BuiltValue()
abstract class DecideAnswer implements Built<DecideAnswer, DecideAnswerBuilder> {
  /// choice: the option picked; score: a number on the rubric; noul: a boolean.
  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  /// The probability of `value` — read it as one only when the response says `calibrated`.
  @BuiltValueField(wireName: r'p')
  num get p;

  /// The whole distribution.
  @BuiltValueField(wireName: r'options')
  BuiltList<DecideAnswerOption> get options;

  /// The provider's own confidence, when it reports one.
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  DecideAnswer._();

  factory DecideAnswer([void updates(DecideAnswerBuilder b)]) = _$DecideAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideAnswer> get serializer => _$DecideAnswerSerializer();
}

class _$DecideAnswerSerializer implements PrimitiveSerializer<DecideAnswer> {
  @override
  final Iterable<Type> types = const [DecideAnswer, _$DecideAnswer];

  @override
  final String wireName = r'DecideAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield object.value == null ? null : serializers.serialize(
      object.value,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'p';
    yield serializers.serialize(
      object.p,
      specifiedType: const FullType(num),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltList, [FullType(DecideAnswerOption)]),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'p':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.p = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DecideAnswerOption)]),
          ) as BuiltList<DecideAnswerOption>;
          result.options.replace(valueDes);
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecideAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideAnswerBuilder();
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


