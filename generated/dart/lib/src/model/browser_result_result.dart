//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_result_result_one_of.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'browser_result_result.g.dart';

/// BrowserResultResult
///
/// Properties:
/// * [text] 
/// * [image] 
@BuiltValue()
abstract class BrowserResultResult implements Built<BrowserResultResult, BrowserResultResultBuilder> {
  /// One Of [BrowserResultResultOneOf], [String]
  OneOf get oneOf;

  BrowserResultResult._();

  factory BrowserResultResult([void updates(BrowserResultResultBuilder b)]) = _$BrowserResultResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserResultResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserResultResult> get serializer => _$BrowserResultResultSerializer();
}

class _$BrowserResultResultSerializer implements PrimitiveSerializer<BrowserResultResult> {
  @override
  final Iterable<Type> types = const [BrowserResultResult, _$BrowserResultResult];

  @override
  final String wireName = r'BrowserResultResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserResultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserResultResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  BrowserResultResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserResultResultBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BrowserResultResultOneOf), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


