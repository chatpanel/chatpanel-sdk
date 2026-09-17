//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_completion_chunk_choices_inner.g.dart';

/// ChatCompletionChunkChoicesInner
///
/// Properties:
/// * [index] 
/// * [delta] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [finishReason] 
@BuiltValue()
abstract class ChatCompletionChunkChoicesInner implements Built<ChatCompletionChunkChoicesInner, ChatCompletionChunkChoicesInnerBuilder> {
  @BuiltValueField(wireName: r'index')
  int? get index;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'delta')
  BuiltMap<String, JsonObject?>? get delta;

  @BuiltValueField(wireName: r'finish_reason')
  String? get finishReason;

  ChatCompletionChunkChoicesInner._();

  factory ChatCompletionChunkChoicesInner([void updates(ChatCompletionChunkChoicesInnerBuilder b)]) = _$ChatCompletionChunkChoicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatCompletionChunkChoicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatCompletionChunkChoicesInner> get serializer => _$ChatCompletionChunkChoicesInnerSerializer();
}

class _$ChatCompletionChunkChoicesInnerSerializer implements PrimitiveSerializer<ChatCompletionChunkChoicesInner> {
  @override
  final Iterable<Type> types = const [ChatCompletionChunkChoicesInner, _$ChatCompletionChunkChoicesInner];

  @override
  final String wireName = r'ChatCompletionChunkChoicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatCompletionChunkChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.delta != null) {
      yield r'delta';
      yield serializers.serialize(
        object.delta,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
    ChatCompletionChunkChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatCompletionChunkChoicesInnerBuilder result,
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
        case r'delta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.delta.replace(valueDes);
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
  ChatCompletionChunkChoicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatCompletionChunkChoicesInnerBuilder();
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


