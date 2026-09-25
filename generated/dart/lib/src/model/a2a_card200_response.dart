//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_card.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2a_card200_response.g.dart';

/// A2aCard200Response
///
/// Properties:
/// * [ok] 
/// * [card] 
/// * [fingerprint] - Changes when the card's content does.
/// * [fresh] - false when the peer answered 304.
/// * [changed] 
/// * [url] 
@BuiltValue()
abstract class A2aCard200Response implements Built<A2aCard200Response, A2aCard200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool? get ok;

  @BuiltValueField(wireName: r'card')
  AgentCard? get card;

  /// Changes when the card's content does.
  @BuiltValueField(wireName: r'fingerprint')
  String? get fingerprint;

  /// false when the peer answered 304.
  @BuiltValueField(wireName: r'fresh')
  bool? get fresh;

  @BuiltValueField(wireName: r'changed')
  bool? get changed;

  @BuiltValueField(wireName: r'url')
  String? get url;

  A2aCard200Response._();

  factory A2aCard200Response([void updates(A2aCard200ResponseBuilder b)]) = _$A2aCard200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2aCard200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2aCard200Response> get serializer => _$A2aCard200ResponseSerializer();
}

class _$A2aCard200ResponseSerializer implements PrimitiveSerializer<A2aCard200Response> {
  @override
  final Iterable<Type> types = const [A2aCard200Response, _$A2aCard200Response];

  @override
  final String wireName = r'A2aCard200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2aCard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(bool),
      );
    }
    if (object.card != null) {
      yield r'card';
      yield serializers.serialize(
        object.card,
        specifiedType: const FullType(AgentCard),
      );
    }
    if (object.fingerprint != null) {
      yield r'fingerprint';
      yield serializers.serialize(
        object.fingerprint,
        specifiedType: const FullType(String),
      );
    }
    if (object.fresh != null) {
      yield r'fresh';
      yield serializers.serialize(
        object.fresh,
        specifiedType: const FullType(bool),
      );
    }
    if (object.changed != null) {
      yield r'changed';
      yield serializers.serialize(
        object.changed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    A2aCard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2aCard200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ok = valueDes;
          break;
        case r'card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentCard),
          ) as AgentCard?;
          if (valueDes == null) continue;
          result.card = valueDes;
          break;
        case r'fingerprint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fingerprint = valueDes;
          break;
        case r'fresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fresh = valueDes;
          break;
        case r'changed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.changed = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  A2aCard200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2aCard200ResponseBuilder();
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


