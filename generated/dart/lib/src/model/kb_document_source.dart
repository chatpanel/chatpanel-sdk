//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_document_source.g.dart';

/// KbDocumentSource
///
/// Properties:
/// * [kind] 
/// * [path] 
/// * [url] 
/// * [name] 
@BuiltValue()
abstract class KbDocumentSource implements Built<KbDocumentSource, KbDocumentSourceBuilder> {
  @BuiltValueField(wireName: r'kind')
  KbDocumentSourceKindEnum? get kind;
  // enum kindEnum {  file,  url,  bytes,  text,  };

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'name')
  String? get name;

  KbDocumentSource._();

  factory KbDocumentSource([void updates(KbDocumentSourceBuilder b)]) = _$KbDocumentSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbDocumentSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbDocumentSource> get serializer => _$KbDocumentSourceSerializer();
}

class _$KbDocumentSourceSerializer implements PrimitiveSerializer<KbDocumentSource> {
  @override
  final Iterable<Type> types = const [KbDocumentSource, _$KbDocumentSource];

  @override
  final String wireName = r'KbDocumentSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbDocumentSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(KbDocumentSourceKindEnum),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbDocumentSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbDocumentSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbDocumentSourceKindEnum),
          ) as KbDocumentSourceKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbDocumentSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbDocumentSourceBuilder();
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


class KbDocumentSourceKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'file')
  static const KbDocumentSourceKindEnum file = _$kbDocumentSourceKindEnum_file;
  @BuiltValueEnumConst(wireName: r'url')
  static const KbDocumentSourceKindEnum url = _$kbDocumentSourceKindEnum_url;
  @BuiltValueEnumConst(wireName: r'bytes')
  static const KbDocumentSourceKindEnum bytes = _$kbDocumentSourceKindEnum_bytes;
  @BuiltValueEnumConst(wireName: r'text')
  static const KbDocumentSourceKindEnum text = _$kbDocumentSourceKindEnum_text;

  static Serializer<KbDocumentSourceKindEnum> get serializer => _$kbDocumentSourceKindEnumSerializer;

  const KbDocumentSourceKindEnum._(String name): super(name);

  static BuiltSet<KbDocumentSourceKindEnum> get values => _$kbDocumentSourceKindEnumValues;
  static KbDocumentSourceKindEnum valueOf(String name) => _$kbDocumentSourceKindEnumValueOf(name);
}

