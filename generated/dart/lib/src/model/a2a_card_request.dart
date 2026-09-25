//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2a_card_request.g.dart';

/// A2aCardRequest
///
/// Properties:
/// * [url] - The agent's origin, or a card URL outright.
/// * [force] - Skip the TTL and revalidate — the ETag is still sent.
/// * [forget] - Drop the cached card first.
/// * [auth] - An Authorization header value for agents that need one.
@BuiltValue()
abstract class A2aCardRequest implements Built<A2aCardRequest, A2aCardRequestBuilder> {
  /// The agent's origin, or a card URL outright.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Skip the TTL and revalidate — the ETag is still sent.
  @BuiltValueField(wireName: r'force')
  bool? get force;

  /// Drop the cached card first.
  @BuiltValueField(wireName: r'forget')
  bool? get forget;

  /// An Authorization header value for agents that need one.
  @BuiltValueField(wireName: r'auth')
  String? get auth;

  A2aCardRequest._();

  factory A2aCardRequest([void updates(A2aCardRequestBuilder b)]) = _$A2aCardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2aCardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2aCardRequest> get serializer => _$A2aCardRequestSerializer();
}

class _$A2aCardRequestSerializer implements PrimitiveSerializer<A2aCardRequest> {
  @override
  final Iterable<Type> types = const [A2aCardRequest, _$A2aCardRequest];

  @override
  final String wireName = r'A2aCardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2aCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.force != null) {
      yield r'force';
      yield serializers.serialize(
        object.force,
        specifiedType: const FullType(bool),
      );
    }
    if (object.forget != null) {
      yield r'forget';
      yield serializers.serialize(
        object.forget,
        specifiedType: const FullType(bool),
      );
    }
    if (object.auth != null) {
      yield r'auth';
      yield serializers.serialize(
        object.auth,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    A2aCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2aCardRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'force':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.force = valueDes;
          break;
        case r'forget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.forget = valueDes;
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.auth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  A2aCardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2aCardRequestBuilder();
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


