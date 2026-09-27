//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_call_result_result_one_of.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'browser_call_result_result.g.dart';

/// The page action's result — its text, or text with a screenshot.
///
/// Properties:
/// * [text] 
/// * [image] - A data URL.
@BuiltValue()
abstract class BrowserCallResultResult implements Built<BrowserCallResultResult, BrowserCallResultResultBuilder> {
  /// One Of [BrowserCallResultResultOneOf], [String]
  OneOf get oneOf;

  BrowserCallResultResult._();

  factory BrowserCallResultResult([void updates(BrowserCallResultResultBuilder b)]) = _$BrowserCallResultResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserCallResultResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserCallResultResult> get serializer => _$BrowserCallResultResultSerializer();
}

class _$BrowserCallResultResultSerializer implements PrimitiveSerializer<BrowserCallResultResult> {
  @override
  final Iterable<Type> types = const [BrowserCallResultResult, _$BrowserCallResultResult];

  @override
  final String wireName = r'BrowserCallResultResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserCallResultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserCallResultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  BrowserCallResultResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserCallResultResultBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BrowserCallResultResultOneOf), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


