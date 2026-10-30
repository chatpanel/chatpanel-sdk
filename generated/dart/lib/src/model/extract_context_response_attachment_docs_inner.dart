//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_response_attachment_docs_inner.g.dart';

/// ExtractContextResponseAttachmentDocsInner
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [of_] 
/// * [pages] 
/// * [how] 
@BuiltValue()
abstract class ExtractContextResponseAttachmentDocsInner implements Built<ExtractContextResponseAttachmentDocsInner, ExtractContextResponseAttachmentDocsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'of')
  int? get of_;

  @BuiltValueField(wireName: r'pages')
  BuiltList<int>? get pages;

  @BuiltValueField(wireName: r'how')
  ExtractContextResponseAttachmentDocsInnerHowEnum? get how;
  // enum howEnum {  whole,  pages,  };

  ExtractContextResponseAttachmentDocsInner._();

  factory ExtractContextResponseAttachmentDocsInner([void updates(ExtractContextResponseAttachmentDocsInnerBuilder b)]) = _$ExtractContextResponseAttachmentDocsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextResponseAttachmentDocsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextResponseAttachmentDocsInner> get serializer => _$ExtractContextResponseAttachmentDocsInnerSerializer();
}

class _$ExtractContextResponseAttachmentDocsInnerSerializer implements PrimitiveSerializer<ExtractContextResponseAttachmentDocsInner> {
  @override
  final Iterable<Type> types = const [ExtractContextResponseAttachmentDocsInner, _$ExtractContextResponseAttachmentDocsInner];

  @override
  final String wireName = r'ExtractContextResponseAttachmentDocsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextResponseAttachmentDocsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.of_ != null) {
      yield r'of';
      yield serializers.serialize(
        object.of_,
        specifiedType: const FullType(int),
      );
    }
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.how != null) {
      yield r'how';
      yield serializers.serialize(
        object.how,
        specifiedType: const FullType(ExtractContextResponseAttachmentDocsInnerHowEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextResponseAttachmentDocsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextResponseAttachmentDocsInnerBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'of':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.of_ = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.pages.replace(valueDes);
          break;
        case r'how':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtractContextResponseAttachmentDocsInnerHowEnum),
          ) as ExtractContextResponseAttachmentDocsInnerHowEnum?;
          if (valueDes == null) continue;
          result.how = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextResponseAttachmentDocsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextResponseAttachmentDocsInnerBuilder();
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


class ExtractContextResponseAttachmentDocsInnerHowEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'whole')
  static const ExtractContextResponseAttachmentDocsInnerHowEnum whole = _$extractContextResponseAttachmentDocsInnerHowEnum_whole;
  @BuiltValueEnumConst(wireName: r'pages')
  static const ExtractContextResponseAttachmentDocsInnerHowEnum pages = _$extractContextResponseAttachmentDocsInnerHowEnum_pages;

  static Serializer<ExtractContextResponseAttachmentDocsInnerHowEnum> get serializer => _$extractContextResponseAttachmentDocsInnerHowEnumSerializer;

  const ExtractContextResponseAttachmentDocsInnerHowEnum._(String name): super(name);

  static BuiltSet<ExtractContextResponseAttachmentDocsInnerHowEnum> get values => _$extractContextResponseAttachmentDocsInnerHowEnumValues;
  static ExtractContextResponseAttachmentDocsInnerHowEnum valueOf(String name) => _$extractContextResponseAttachmentDocsInnerHowEnumValueOf(name);
}

