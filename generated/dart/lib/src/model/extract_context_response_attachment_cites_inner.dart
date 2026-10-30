//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_response_attachment_cites_inner.g.dart';

/// ExtractContextResponseAttachmentCitesInner
///
/// Properties:
/// * [title] 
/// * [page] 
@BuiltValue()
abstract class ExtractContextResponseAttachmentCitesInner implements Built<ExtractContextResponseAttachmentCitesInner, ExtractContextResponseAttachmentCitesInnerBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'page')
  int? get page;

  ExtractContextResponseAttachmentCitesInner._();

  factory ExtractContextResponseAttachmentCitesInner([void updates(ExtractContextResponseAttachmentCitesInnerBuilder b)]) = _$ExtractContextResponseAttachmentCitesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextResponseAttachmentCitesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextResponseAttachmentCitesInner> get serializer => _$ExtractContextResponseAttachmentCitesInnerSerializer();
}

class _$ExtractContextResponseAttachmentCitesInnerSerializer implements PrimitiveSerializer<ExtractContextResponseAttachmentCitesInner> {
  @override
  final Iterable<Type> types = const [ExtractContextResponseAttachmentCitesInner, _$ExtractContextResponseAttachmentCitesInner];

  @override
  final String wireName = r'ExtractContextResponseAttachmentCitesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextResponseAttachmentCitesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextResponseAttachmentCitesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextResponseAttachmentCitesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextResponseAttachmentCitesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextResponseAttachmentCitesInnerBuilder();
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


