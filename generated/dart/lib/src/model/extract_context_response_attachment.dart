//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/extract_context_response_attachment_docs_inner.dart';
import 'package:chatpanel/src/model/extract_context_response_attachment_cites_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_response_attachment.g.dart';

/// The block to put BEFORE the question; null when nothing could be read.
///
/// Properties:
/// * [kind] 
/// * [prefetch] 
/// * [title] 
/// * [text] - Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt's language before reading it), then `--- page n ---` and that page's text.
/// * [chars] 
/// * [cites] 
/// * [docs] 
@BuiltValue()
abstract class ExtractContextResponseAttachment implements Built<ExtractContextResponseAttachment, ExtractContextResponseAttachmentBuilder> {
  @BuiltValueField(wireName: r'kind')
  ExtractContextResponseAttachmentKindEnum? get kind;
  // enum kindEnum {  prefetch,  };

  @BuiltValueField(wireName: r'prefetch')
  ExtractContextResponseAttachmentPrefetchEnum? get prefetch;
  // enum prefetchEnum {  document,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt's language before reading it), then `--- page n ---` and that page's text.
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'chars')
  int? get chars;

  @BuiltValueField(wireName: r'cites')
  BuiltList<ExtractContextResponseAttachmentCitesInner>? get cites;

  @BuiltValueField(wireName: r'docs')
  BuiltList<ExtractContextResponseAttachmentDocsInner>? get docs;

  ExtractContextResponseAttachment._();

  factory ExtractContextResponseAttachment([void updates(ExtractContextResponseAttachmentBuilder b)]) = _$ExtractContextResponseAttachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextResponseAttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextResponseAttachment> get serializer => _$ExtractContextResponseAttachmentSerializer();
}

class _$ExtractContextResponseAttachmentSerializer implements PrimitiveSerializer<ExtractContextResponseAttachment> {
  @override
  final Iterable<Type> types = const [ExtractContextResponseAttachment, _$ExtractContextResponseAttachment];

  @override
  final String wireName = r'ExtractContextResponseAttachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(ExtractContextResponseAttachmentKindEnum),
      );
    }
    if (object.prefetch != null) {
      yield r'prefetch';
      yield serializers.serialize(
        object.prefetch,
        specifiedType: const FullType(ExtractContextResponseAttachmentPrefetchEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseAttachmentCitesInner)]),
      );
    }
    if (object.docs != null) {
      yield r'docs';
      yield serializers.serialize(
        object.docs,
        specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseAttachmentDocsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextResponseAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextResponseAttachmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtractContextResponseAttachmentKindEnum),
          ) as ExtractContextResponseAttachmentKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'prefetch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtractContextResponseAttachmentPrefetchEnum),
          ) as ExtractContextResponseAttachmentPrefetchEnum?;
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
            specifiedType: const FullType.nullable(BuiltList, [FullType(ExtractContextResponseAttachmentCitesInner)]),
          ) as BuiltList<ExtractContextResponseAttachmentCitesInner>?;
          if (valueDes == null) continue;
          result.cites.replace(valueDes);
          break;
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ExtractContextResponseAttachmentDocsInner)]),
          ) as BuiltList<ExtractContextResponseAttachmentDocsInner>?;
          if (valueDes == null) continue;
          result.docs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextResponseAttachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextResponseAttachmentBuilder();
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


class ExtractContextResponseAttachmentKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'prefetch')
  static const ExtractContextResponseAttachmentKindEnum prefetch = _$extractContextResponseAttachmentKindEnum_prefetch;

  static Serializer<ExtractContextResponseAttachmentKindEnum> get serializer => _$extractContextResponseAttachmentKindEnumSerializer;

  const ExtractContextResponseAttachmentKindEnum._(String name): super(name);

  static BuiltSet<ExtractContextResponseAttachmentKindEnum> get values => _$extractContextResponseAttachmentKindEnumValues;
  static ExtractContextResponseAttachmentKindEnum valueOf(String name) => _$extractContextResponseAttachmentKindEnumValueOf(name);
}

class ExtractContextResponseAttachmentPrefetchEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'document')
  static const ExtractContextResponseAttachmentPrefetchEnum document = _$extractContextResponseAttachmentPrefetchEnum_document;

  static Serializer<ExtractContextResponseAttachmentPrefetchEnum> get serializer => _$extractContextResponseAttachmentPrefetchEnumSerializer;

  const ExtractContextResponseAttachmentPrefetchEnum._(String name): super(name);

  static BuiltSet<ExtractContextResponseAttachmentPrefetchEnum> get values => _$extractContextResponseAttachmentPrefetchEnumValues;
  static ExtractContextResponseAttachmentPrefetchEnum valueOf(String name) => _$extractContextResponseAttachmentPrefetchEnumValueOf(name);
}

