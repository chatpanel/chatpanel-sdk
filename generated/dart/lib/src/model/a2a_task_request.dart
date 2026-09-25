//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_card.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2a_task_request.g.dart';

/// A2aTaskRequest
///
/// Properties:
/// * [id] 
/// * [url] 
/// * [card] 
/// * [cancel] - Cancel instead of polling.
/// * [auth] 
@BuiltValue()
abstract class A2aTaskRequest implements Built<A2aTaskRequest, A2aTaskRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'card')
  AgentCard? get card;

  /// Cancel instead of polling.
  @BuiltValueField(wireName: r'cancel')
  bool? get cancel;

  @BuiltValueField(wireName: r'auth')
  String? get auth;

  A2aTaskRequest._();

  factory A2aTaskRequest([void updates(A2aTaskRequestBuilder b)]) = _$A2aTaskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2aTaskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2aTaskRequest> get serializer => _$A2aTaskRequestSerializer();
}

class _$A2aTaskRequestSerializer implements PrimitiveSerializer<A2aTaskRequest> {
  @override
  final Iterable<Type> types = const [A2aTaskRequest, _$A2aTaskRequest];

  @override
  final String wireName = r'A2aTaskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2aTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    if (object.cancel != null) {
      yield r'cancel';
      yield serializers.serialize(
        object.cancel,
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
    A2aTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2aTaskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
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
        case r'cancel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.cancel = valueDes;
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
  A2aTaskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2aTaskRequestBuilder();
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


