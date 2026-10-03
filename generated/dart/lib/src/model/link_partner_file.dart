//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_partner_file.g.dart';

/// LinkPartnerFile
///
/// Properties:
/// * [path] - Relative to the partner's folder.
/// * [size] 
/// * [modifiedAt] 
@BuiltValue()
abstract class LinkPartnerFile implements Built<LinkPartnerFile, LinkPartnerFileBuilder> {
  /// Relative to the partner's folder.
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'size')
  int get size;

  @BuiltValueField(wireName: r'modifiedAt')
  int? get modifiedAt;

  LinkPartnerFile._();

  factory LinkPartnerFile([void updates(LinkPartnerFileBuilder b)]) = _$LinkPartnerFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPartnerFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPartnerFile> get serializer => _$LinkPartnerFileSerializer();
}

class _$LinkPartnerFileSerializer implements PrimitiveSerializer<LinkPartnerFile> {
  @override
  final Iterable<Type> types = const [LinkPartnerFile, _$LinkPartnerFile];

  @override
  final String wireName = r'LinkPartnerFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPartnerFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    if (object.modifiedAt != null) {
      yield r'modifiedAt';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPartnerFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkPartnerFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.modifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkPartnerFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPartnerFileBuilder();
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


