//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/chat_content_part.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'chat_message_content.g.dart';

/// ChatMessageContent
@BuiltValue()
abstract class ChatMessageContent implements Built<ChatMessageContent, ChatMessageContentBuilder> {
  /// One Of [BuiltList<ChatContentPart>], [String]
  OneOf get oneOf;

  ChatMessageContent._();

  factory ChatMessageContent([void updates(ChatMessageContentBuilder b)]) = _$ChatMessageContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatMessageContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatMessageContent> get serializer => _$ChatMessageContentSerializer();
}

class _$ChatMessageContentSerializer implements PrimitiveSerializer<ChatMessageContent> {
  @override
  final Iterable<Type> types = const [ChatMessageContent, _$ChatMessageContent];

  @override
  final String wireName = r'ChatMessageContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatMessageContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ChatMessageContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatMessageContentBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(BuiltList, [FullType(ChatContentPart)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


