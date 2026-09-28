//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/threads_send_request_from.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'threads_send_request.g.dart';

/// ThreadsSendRequest
///
/// Properties:
/// * [to] - The chat to ask — a record id, chat:…
/// * [message] 
/// * [from] 
/// * [dryRun] - Only which chat and model — nothing is run.
@BuiltValue()
abstract class ThreadsSendRequest implements Built<ThreadsSendRequest, ThreadsSendRequestBuilder> {
  /// The chat to ask — a record id, chat:…
  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'from')
  ThreadsSendRequestFrom? get from;

  /// Only which chat and model — nothing is run.
  @BuiltValueField(wireName: r'dryRun')
  bool? get dryRun;

  ThreadsSendRequest._();

  factory ThreadsSendRequest([void updates(ThreadsSendRequestBuilder b)]) = _$ThreadsSendRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadsSendRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadsSendRequest> get serializer => _$ThreadsSendRequestSerializer();
}

class _$ThreadsSendRequestSerializer implements PrimitiveSerializer<ThreadsSendRequest> {
  @override
  final Iterable<Type> types = const [ThreadsSendRequest, _$ThreadsSendRequest];

  @override
  final String wireName = r'ThreadsSendRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadsSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(ThreadsSendRequestFrom),
      );
    }
    if (object.dryRun != null) {
      yield r'dryRun';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadsSendRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadsSendRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ThreadsSendRequestFrom),
          ) as ThreadsSendRequestFrom?;
          if (valueDes == null) continue;
          result.from.replace(valueDes);
          break;
        case r'dryRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dryRun = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadsSendRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadsSendRequestBuilder();
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


