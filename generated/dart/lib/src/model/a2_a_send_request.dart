//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/agent_card.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2_a_send_request.g.dart';

/// Either `url` or `card` identifies the agent; either `text` or `message` is what to say.
///
/// Properties:
/// * [url] 
/// * [card] 
/// * [text] - Shorthand for a one-part text message.
/// * [message] - A full A2A Message.
/// * [contextId] - Groups related interactions.
/// * [taskId] - Continues an existing task — how an input or auth stop is answered.
/// * [returnImmediately] - Do not wait for a terminal or interrupted state.
/// * [auth] 
@BuiltValue()
abstract class A2ASendRequest implements Built<A2ASendRequest, A2ASendRequestBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'card')
  AgentCard? get card;

  /// Shorthand for a one-part text message.
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// A full A2A Message.
  @BuiltValueField(wireName: r'message')
  BuiltMap<String, JsonObject?>? get message;

  /// Groups related interactions.
  @BuiltValueField(wireName: r'contextId')
  String? get contextId;

  /// Continues an existing task — how an input or auth stop is answered.
  @BuiltValueField(wireName: r'taskId')
  String? get taskId;

  /// Do not wait for a terminal or interrupted state.
  @BuiltValueField(wireName: r'returnImmediately')
  bool? get returnImmediately;

  @BuiltValueField(wireName: r'auth')
  String? get auth;

  A2ASendRequest._();

  factory A2ASendRequest([void updates(A2ASendRequestBuilder b)]) = _$A2ASendRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2ASendRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2ASendRequest> get serializer => _$A2ASendRequestSerializer();
}

class _$A2ASendRequestSerializer implements PrimitiveSerializer<A2ASendRequest> {
  @override
  final Iterable<Type> types = const [A2ASendRequest, _$A2ASendRequest];

  @override
  final String wireName = r'A2ASendRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2ASendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.card != null) {
      yield r'card';
      yield serializers.serialize(
        object.card,
        specifiedType: const FullType(AgentCard),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.contextId != null) {
      yield r'contextId';
      yield serializers.serialize(
        object.contextId,
        specifiedType: const FullType(String),
      );
    }
    if (object.taskId != null) {
      yield r'taskId';
      yield serializers.serialize(
        object.taskId,
        specifiedType: const FullType(String),
      );
    }
    if (object.returnImmediately != null) {
      yield r'returnImmediately';
      yield serializers.serialize(
        object.returnImmediately,
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
    A2ASendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2ASendRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentCard),
          ) as AgentCard?;
          if (valueDes == null) continue;
          result.card = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.message.replace(valueDes);
          break;
        case r'contextId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contextId = valueDes;
          break;
        case r'taskId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.taskId = valueDes;
          break;
        case r'returnImmediately':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.returnImmediately = valueDes;
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
  A2ASendRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2ASendRequestBuilder();
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


