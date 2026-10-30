//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_document_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_document.g.dart';

/// KbDocument
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [pages] 
/// * [chunks] - Passages.
/// * [type] 
/// * [source_] 
/// * [addedAt] 
@BuiltValue()
abstract class KbDocument implements Built<KbDocument, KbDocumentBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'pages')
  int get pages;

  /// Passages.
  @BuiltValueField(wireName: r'chunks')
  int get chunks;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'source')
  KbDocumentSource? get source_;

  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  KbDocument._();

  factory KbDocument([void updates(KbDocumentBuilder b)]) = _$KbDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbDocument> get serializer => _$KbDocumentSerializer();
}

class _$KbDocumentSerializer implements PrimitiveSerializer<KbDocument> {
  @override
  final Iterable<Type> types = const [KbDocument, _$KbDocument];

  @override
  final String wireName = r'KbDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'pages';
    yield serializers.serialize(
      object.pages,
      specifiedType: const FullType(int),
    );
    yield r'chunks';
    yield serializers.serialize(
      object.chunks,
      specifiedType: const FullType(int),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(KbDocumentSource),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pages = valueDes;
          break;
        case r'chunks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chunks = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbDocumentSource),
          ) as KbDocumentSource?;
          if (valueDes == null) continue;
          result.source_.replace(valueDes);
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.addedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbDocumentBuilder();
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


