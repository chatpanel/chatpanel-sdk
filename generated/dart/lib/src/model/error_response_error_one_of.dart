//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response_error_one_of.g.dart';

/// ErrorResponseErrorOneOf
///
/// Properties:
/// * [message] 
/// * [type] - A stable machine word — `not_found`, `invalid_request`, `unavailable`, `auth`, `policy`, …
/// * [code] - A finer word when there is one — `agent_lane_token_required`, `org_policy`.
@BuiltValue()
abstract class ErrorResponseErrorOneOf implements Built<ErrorResponseErrorOneOf, ErrorResponseErrorOneOfBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  /// A stable machine word — `not_found`, `invalid_request`, `unavailable`, `auth`, `policy`, …
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// A finer word when there is one — `agent_lane_token_required`, `org_policy`.
  @BuiltValueField(wireName: r'code')
  String? get code;

  ErrorResponseErrorOneOf._();

  factory ErrorResponseErrorOneOf([void updates(ErrorResponseErrorOneOfBuilder b)]) = _$ErrorResponseErrorOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponseErrorOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponseErrorOneOf> get serializer => _$ErrorResponseErrorOneOfSerializer();
}

class _$ErrorResponseErrorOneOfSerializer implements PrimitiveSerializer<ErrorResponseErrorOneOf> {
  @override
  final Iterable<Type> types = const [ErrorResponseErrorOneOf, _$ErrorResponseErrorOneOf];

  @override
  final String wireName = r'ErrorResponseErrorOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponseErrorOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponseErrorOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorResponseErrorOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorResponseErrorOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponseErrorOneOfBuilder();
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


