//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_answer_option.g.dart';

/// DecideAnswerOption
///
/// Properties:
/// * [value] - A string (choice, score rubric entry) or a boolean (noul).
/// * [p] 
@BuiltValue()
abstract class DecideAnswerOption implements Built<DecideAnswerOption, DecideAnswerOptionBuilder> {
  /// A string (choice, score rubric entry) or a boolean (noul).
  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  @BuiltValueField(wireName: r'p')
  num get p;

  DecideAnswerOption._();

  factory DecideAnswerOption([void updates(DecideAnswerOptionBuilder b)]) = _$DecideAnswerOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideAnswerOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideAnswerOption> get serializer => _$DecideAnswerOptionSerializer();
}

class _$DecideAnswerOptionSerializer implements PrimitiveSerializer<DecideAnswerOption> {
  @override
  final Iterable<Type> types = const [DecideAnswerOption, _$DecideAnswerOption];

  @override
  final String wireName = r'DecideAnswerOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideAnswerOption object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideAnswerOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideAnswerOptionBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecideAnswerOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideAnswerOptionBuilder();
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


