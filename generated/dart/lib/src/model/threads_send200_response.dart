//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'threads_send200_response.g.dart';

/// ThreadsSend200Response
///
/// Properties:
/// * [ok] 
/// * [title] 
/// * [model] 
/// * [reply] 
@BuiltValue()
abstract class ThreadsSend200Response implements Built<ThreadsSend200Response, ThreadsSend200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'reply')
  String? get reply;

  ThreadsSend200Response._();

  factory ThreadsSend200Response([void updates(ThreadsSend200ResponseBuilder b)]) = _$ThreadsSend200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThreadsSend200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThreadsSend200Response> get serializer => _$ThreadsSend200ResponseSerializer();
}

class _$ThreadsSend200ResponseSerializer implements PrimitiveSerializer<ThreadsSend200Response> {
  @override
  final Iterable<Type> types = const [ThreadsSend200Response, _$ThreadsSend200Response];

  @override
  final String wireName = r'ThreadsSend200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThreadsSend200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    if (object.reply != null) {
      yield r'reply';
      yield serializers.serialize(
        object.reply,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThreadsSend200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThreadsSend200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'reply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reply = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThreadsSend200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThreadsSend200ResponseBuilder();
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


