//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_response_attachment.g.dart';

/// The block for the model (`kind: prefetch`, `prefetch: kb`), or null.
///
/// Properties:
/// * [id] 
/// * [kind] 
/// * [prefetch] 
/// * [title] 
/// * [text] 
/// * [chars] 
/// * [cites] 
@BuiltValue()
abstract class KbResearchResponseAttachment implements Built<KbResearchResponseAttachment, KbResearchResponseAttachmentBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'prefetch')
  String? get prefetch;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'chars')
  int? get chars;

  @BuiltValueField(wireName: r'cites')
  BuiltList<BuiltMap<String, JsonObject?>>? get cites;

  KbResearchResponseAttachment._();

  factory KbResearchResponseAttachment([void updates(KbResearchResponseAttachmentBuilder b)]) = _$KbResearchResponseAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchResponseAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchResponseAttachment> get serializer => _$KbResearchResponseAttachmentSerializer();
}

class _$KbResearchResponseAttachmentSerializer implements PrimitiveSerializer<KbResearchResponseAttachment> {
  @override
  final Iterable<Type> types = const [KbResearchResponseAttachment, _$KbResearchResponseAttachment];

  @override
  final String wireName = r'KbResearchResponseAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.prefetch != null) {
      yield r'prefetch';
      yield serializers.serialize(
        object.prefetch,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.chars != null) {
      yield r'chars';
      yield serializers.serialize(
        object.chars,
        specifiedType: const FullType(int),
      );
    }
    if (object.cites != null) {
      yield r'cites';
      yield serializers.serialize(
        object.cites,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchResponseAttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'prefetch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prefetch = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'chars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chars = valueDes;
          break;
        case r'cites':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.cites.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbResearchResponseAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchResponseAttachmentBuilder();
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


