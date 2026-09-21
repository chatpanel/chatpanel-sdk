//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/decide_option.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'decide_question_options_inner.g.dart';

/// DecideQuestionOptionsInner
///
/// Properties:
/// * [value] 
/// * [describe] - What the option means — travels to the model as its criterion.
@BuiltValue()
abstract class DecideQuestionOptionsInner implements Built<DecideQuestionOptionsInner, DecideQuestionOptionsInnerBuilder> {
  /// One Of [DecideOption], [String]
  OneOf get oneOf;

  DecideQuestionOptionsInner._();

  factory DecideQuestionOptionsInner([void updates(DecideQuestionOptionsInnerBuilder b)]) = _$DecideQuestionOptionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideQuestionOptionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideQuestionOptionsInner> get serializer => _$DecideQuestionOptionsInnerSerializer();
}

class _$DecideQuestionOptionsInnerSerializer implements PrimitiveSerializer<DecideQuestionOptionsInner> {
  @override
  final Iterable<Type> types = const [DecideQuestionOptionsInner, _$DecideQuestionOptionsInner];

  @override
  final String wireName = r'DecideQuestionOptionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideQuestionOptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideQuestionOptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  DecideQuestionOptionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideQuestionOptionsInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(DecideOption), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


