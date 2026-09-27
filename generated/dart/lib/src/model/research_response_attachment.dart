//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_response_attachment.g.dart';

/// The block to hand a model — null when nothing was found anywhere.
///
/// Properties:
/// * [title] 
/// * [text] 
@BuiltValue()
abstract class ResearchResponseAttachment implements Built<ResearchResponseAttachment, ResearchResponseAttachmentBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'text')
  String get text;

  ResearchResponseAttachment._();

  factory ResearchResponseAttachment([void updates(ResearchResponseAttachmentBuilder b)]) = _$ResearchResponseAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchResponseAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchResponseAttachment> get serializer => _$ResearchResponseAttachmentSerializer();
}

class _$ResearchResponseAttachmentSerializer implements PrimitiveSerializer<ResearchResponseAttachment> {
  @override
  final Iterable<Type> types = const [ResearchResponseAttachment, _$ResearchResponseAttachment];

  @override
  final String wireName = r'ResearchResponseAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchResponseAttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchResponseAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchResponseAttachmentBuilder();
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


