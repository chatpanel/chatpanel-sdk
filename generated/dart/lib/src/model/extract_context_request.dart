//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/extract_context_request_documents_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_request.g.dart';

/// ExtractContextRequest
///
/// Properties:
/// * [question] - The question the documents are read for — its content words pick the pages of a long document.
/// * [documents] - Each document as its bytes (`name` + `data`, optionally `type`) or as the `hash` `/v1/extract` returned for one already open (optionally `name`, the title the block shows).
/// * [window] - The answering model's window in tokens — sizes the share the documents may take. Absent: a small window's share.
/// * [budgetChars] - The share outright, in characters; overrides `window`.
@BuiltValue()
abstract class ExtractContextRequest implements Built<ExtractContextRequest, ExtractContextRequestBuilder> {
  /// The question the documents are read for — its content words pick the pages of a long document.
  @BuiltValueField(wireName: r'question')
  String get question;

  /// Each document as its bytes (`name` + `data`, optionally `type`) or as the `hash` `/v1/extract` returned for one already open (optionally `name`, the title the block shows).
  @BuiltValueField(wireName: r'documents')
  BuiltList<ExtractContextRequestDocumentsInner> get documents;

  /// The answering model's window in tokens — sizes the share the documents may take. Absent: a small window's share.
  @BuiltValueField(wireName: r'window')
  int? get window;

  /// The share outright, in characters; overrides `window`.
  @BuiltValueField(wireName: r'budgetChars')
  int? get budgetChars;

  ExtractContextRequest._();

  factory ExtractContextRequest([void updates(ExtractContextRequestBuilder b)]) = _$ExtractContextRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextRequest> get serializer => _$ExtractContextRequestSerializer();
}

class _$ExtractContextRequestSerializer implements PrimitiveSerializer<ExtractContextRequest> {
  @override
  final Iterable<Type> types = const [ExtractContextRequest, _$ExtractContextRequest];

  @override
  final String wireName = r'ExtractContextRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    yield r'documents';
    yield serializers.serialize(
      object.documents,
      specifiedType: const FullType(BuiltList, [FullType(ExtractContextRequestDocumentsInner)]),
    );
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(int),
      );
    }
    if (object.budgetChars != null) {
      yield r'budgetChars';
      yield serializers.serialize(
        object.budgetChars,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExtractContextRequestDocumentsInner)]),
          ) as BuiltList<ExtractContextRequestDocumentsInner>;
          result.documents.replace(valueDes);
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.window = valueDes;
          break;
        case r'budgetChars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.budgetChars = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextRequestBuilder();
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


