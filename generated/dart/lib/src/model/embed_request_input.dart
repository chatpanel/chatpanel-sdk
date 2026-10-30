//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'embed_request_input.g.dart';

/// A string, or 1–256 strings.
@BuiltValue()
abstract class EmbedRequestInput implements Built<EmbedRequestInput, EmbedRequestInputBuilder> {
  /// One Of [BuiltList<String>], [String]
  OneOf get oneOf;

  EmbedRequestInput._();

  factory EmbedRequestInput([void updates(EmbedRequestInputBuilder b)]) = _$EmbedRequestInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmbedRequestInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmbedRequestInput> get serializer => _$EmbedRequestInputSerializer();
}

class _$EmbedRequestInputSerializer implements PrimitiveSerializer<EmbedRequestInput> {
  @override
  final Iterable<Type> types = const [EmbedRequestInput, _$EmbedRequestInput];

  @override
  final String wireName = r'EmbedRequestInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmbedRequestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    EmbedRequestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  EmbedRequestInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmbedRequestInputBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


