//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/error_response_error_one_of.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'error_response_error.g.dart';

/// ErrorResponseError
///
/// Properties:
/// * [message] 
/// * [type] - A stable machine word — `not_found`, `invalid_request`, `unavailable`, `auth`, `policy`, …
/// * [code] - A finer word when there is one — `agent_lane_token_required`, `org_policy`.
@BuiltValue()
abstract class ErrorResponseError implements Built<ErrorResponseError, ErrorResponseErrorBuilder> {
  /// One Of [ErrorResponseErrorOneOf], [String]
  OneOf get oneOf;

  ErrorResponseError._();

  factory ErrorResponseError([void updates(ErrorResponseErrorBuilder b)]) = _$ErrorResponseError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponseErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponseError> get serializer => _$ErrorResponseErrorSerializer();
}

class _$ErrorResponseErrorSerializer implements PrimitiveSerializer<ErrorResponseError> {
  @override
  final Iterable<Type> types = const [ErrorResponseError, _$ErrorResponseError];

  @override
  final String wireName = r'ErrorResponseError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ErrorResponseError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponseErrorBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(ErrorResponseErrorOneOf), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


