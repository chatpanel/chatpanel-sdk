//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_response.g.dart';

/// ExtractResponse
///
/// Properties:
/// * [hash] - SHA-256 of the bytes — the document's identity for page calls.
/// * [type] - What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html.
/// * [pages] 
/// * [title] - The document's own title, when it declares one; else empty.
/// * [scanned] - A PDF with no text layer: its pages are empty and need OCR, which this does not do.
/// * [page] - Present on a page call.
/// * [text] - The page's text, on a page call. May be empty.
/// * [provider] - `chatpanel-extract`.
/// * [ms] 
@BuiltValue()
abstract class ExtractResponse implements Built<ExtractResponse, ExtractResponseBuilder> {
  /// SHA-256 of the bytes — the document's identity for page calls.
  @BuiltValueField(wireName: r'hash')
  String get hash;

  /// What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html.
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'pages')
  int get pages;

  /// The document's own title, when it declares one; else empty.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// A PDF with no text layer: its pages are empty and need OCR, which this does not do.
  @BuiltValueField(wireName: r'scanned')
  bool? get scanned;

  /// Present on a page call.
  @BuiltValueField(wireName: r'page')
  int? get page;

  /// The page's text, on a page call. May be empty.
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// `chatpanel-extract`.
  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  ExtractResponse._();

  factory ExtractResponse([void updates(ExtractResponseBuilder b)]) = _$ExtractResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractResponse> get serializer => _$ExtractResponseSerializer();
}

class _$ExtractResponseSerializer implements PrimitiveSerializer<ExtractResponse> {
  @override
  final Iterable<Type> types = const [ExtractResponse, _$ExtractResponse];

  @override
  final String wireName = r'ExtractResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'pages';
    yield serializers.serialize(
      object.pages,
      specifiedType: const FullType(int),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.scanned != null) {
      yield r'scanned';
      yield serializers.serialize(
        object.scanned,
        specifiedType: const FullType(bool),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pages = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'scanned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scanned = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractResponseBuilder();
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


