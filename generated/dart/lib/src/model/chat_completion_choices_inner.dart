//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/chat_message.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_choices_inner.g.dart';

/// ChatCompletionChoicesInner
///
/// Properties:
/// * [index] 
/// * [message] 
/// * [finishReason] 
@BuiltValue()
abstract class ChatCompletionChoicesInner implements Built<ChatCompletionChoicesInner, ChatCompletionChoicesInnerBuilder> {
  @BuiltValueField(wireName: r'index')
  int? get index;

  @BuiltValueField(wireName: r'message')
  ChatMessage? get message;

  @BuiltValueField(wireName: r'finish_reason')
  String? get finishReason;

  ChatCompletionChoicesInner._();

  factory ChatCompletionChoicesInner([void updates(ChatCompletionChoicesInnerBuilder b)]) = _$ChatCompletionChoicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionChoicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionChoicesInner> get serializer => _$ChatCompletionChoicesInnerSerializer();
}

class _$ChatCompletionChoicesInnerSerializer implements PrimitiveSerializer<ChatCompletionChoicesInner> {
  @override
  final Iterable<Type> types = const [ChatCompletionChoicesInner, _$ChatCompletionChoicesInner];

  @override
  final String wireName = r'ChatCompletionChoicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(ChatMessage),
      );
    }
    if (object.finishReason != null) {
      yield r'finish_reason';
      yield serializers.serialize(
        object.finishReason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatCompletionChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionChoicesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.index = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChatMessage),
          ) as ChatMessage?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'finish_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.finishReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatCompletionChoicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionChoicesInnerBuilder();
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


