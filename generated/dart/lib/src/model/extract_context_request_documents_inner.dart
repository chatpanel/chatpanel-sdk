//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_request_documents_inner.g.dart';

/// ExtractContextRequestDocumentsInner
///
/// Properties:
/// * [name] 
/// * [type] 
/// * [data] 
/// * [hash] 
@BuiltValue()
abstract class ExtractContextRequestDocumentsInner implements Built<ExtractContextRequestDocumentsInner, ExtractContextRequestDocumentsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'data')
  String? get data;

  @BuiltValueField(wireName: r'hash')
  String? get hash;

  ExtractContextRequestDocumentsInner._();

  factory ExtractContextRequestDocumentsInner([void updates(ExtractContextRequestDocumentsInnerBuilder b)]) = _$ExtractContextRequestDocumentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextRequestDocumentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextRequestDocumentsInner> get serializer => _$ExtractContextRequestDocumentsInnerSerializer();
}

class _$ExtractContextRequestDocumentsInnerSerializer implements PrimitiveSerializer<ExtractContextRequestDocumentsInner> {
  @override
  final Iterable<Type> types = const [ExtractContextRequestDocumentsInner, _$ExtractContextRequestDocumentsInner];

  @override
  final String wireName = r'ExtractContextRequestDocumentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextRequestDocumentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(String),
      );
    }
    if (object.hash != null) {
      yield r'hash';
      yield serializers.serialize(
        object.hash,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextRequestDocumentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextRequestDocumentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextRequestDocumentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextRequestDocumentsInnerBuilder();
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


