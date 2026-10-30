//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_document.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_documents.g.dart';

/// KbDocuments
///
/// Properties:
/// * [documents] 
@BuiltValue()
abstract class KbDocuments implements Built<KbDocuments, KbDocumentsBuilder> {
  @BuiltValueField(wireName: r'documents')
  BuiltList<KbDocument> get documents;

  KbDocuments._();

  factory KbDocuments([void updates(KbDocumentsBuilder b)]) = _$KbDocuments;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbDocumentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbDocuments> get serializer => _$KbDocumentsSerializer();
}

class _$KbDocumentsSerializer implements PrimitiveSerializer<KbDocuments> {
  @override
  final Iterable<Type> types = const [KbDocuments, _$KbDocuments];

  @override
  final String wireName = r'KbDocuments';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbDocuments object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'documents';
    yield serializers.serialize(
      object.documents,
      specifiedType: const FullType(BuiltList, [FullType(KbDocument)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbDocuments object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbDocumentsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbDocument)]),
          ) as BuiltList<KbDocument>;
          result.documents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbDocuments deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbDocumentsBuilder();
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


