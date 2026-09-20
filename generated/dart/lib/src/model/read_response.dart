//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/read_restriction.dart';
import 'package:chatpanel/src/model/read_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_response.g.dart';

/// ReadResponse
///
/// Properties:
/// * [url] - Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped.
/// * [requested] - The URL that was asked for.
/// * [title] 
/// * [author] 
/// * [published] - As the page declared it (ISO date or datetime when it gave one).
/// * [site] - The hostname of `url`.
/// * [lang] 
/// * [format] 
/// * [markdown] - The content, when `format` is markdown.
/// * [text] - The content, when `format` is text.
/// * [chars] - Length of the content field.
/// * [truncated] 
/// * [sections] 
/// * [fetched] - When the page was fetched (the cached copy's time on a cache hit).
/// * [cached] 
/// * [provider] 
/// * [ms] 
/// * [restricted] - Set when the page was not read as the article; the content is then the request's `snippet`.
@BuiltValue()
abstract class ReadResponse implements Built<ReadResponse, ReadResponseBuilder> {
  /// Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// The URL that was asked for.
  @BuiltValueField(wireName: r'requested')
  String? get requested;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'author')
  String? get author;

  /// As the page declared it (ISO date or datetime when it gave one).
  @BuiltValueField(wireName: r'published')
  String? get published;

  /// The hostname of `url`.
  @BuiltValueField(wireName: r'site')
  String? get site;

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'format')
  ReadResponseFormatEnum get format;
  // enum formatEnum {  markdown,  text,  };

  /// The content, when `format` is markdown.
  @BuiltValueField(wireName: r'markdown')
  String? get markdown;

  /// The content, when `format` is text.
  @BuiltValueField(wireName: r'text')
  String? get text;

  /// Length of the content field.
  @BuiltValueField(wireName: r'chars')
  int get chars;

  @BuiltValueField(wireName: r'truncated')
  bool get truncated;

  @BuiltValueField(wireName: r'sections')
  BuiltList<ReadSection> get sections;

  /// When the page was fetched (the cached copy's time on a cache hit).
  @BuiltValueField(wireName: r'fetched')
  DateTime? get fetched;

  @BuiltValueField(wireName: r'cached')
  bool? get cached;

  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  /// Set when the page was not read as the article; the content is then the request's `snippet`.
  @BuiltValueField(wireName: r'restricted')
  ReadRestriction? get restricted;

  ReadResponse._();

  factory ReadResponse([void updates(ReadResponseBuilder b)]) = _$ReadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadResponse> get serializer => _$ReadResponseSerializer();
}

class _$ReadResponseSerializer implements PrimitiveSerializer<ReadResponse> {
  @override
  final Iterable<Type> types = const [ReadResponse, _$ReadResponse];

  @override
  final String wireName = r'ReadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.requested != null) {
      yield r'requested';
      yield serializers.serialize(
        object.requested,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(String),
      );
    }
    if (object.published != null) {
      yield r'published';
      yield serializers.serialize(
        object.published,
        specifiedType: const FullType(String),
      );
    }
    if (object.site != null) {
      yield r'site';
      yield serializers.serialize(
        object.site,
        specifiedType: const FullType(String),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ReadResponseFormatEnum),
    );
    if (object.markdown != null) {
      yield r'markdown';
      yield serializers.serialize(
        object.markdown,
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
    yield r'chars';
    yield serializers.serialize(
      object.chars,
      specifiedType: const FullType(int),
    );
    yield r'truncated';
    yield serializers.serialize(
      object.truncated,
      specifiedType: const FullType(bool),
    );
    yield r'sections';
    yield serializers.serialize(
      object.sections,
      specifiedType: const FullType(BuiltList, [FullType(ReadSection)]),
    );
    if (object.fetched != null) {
      yield r'fetched';
      yield serializers.serialize(
        object.fetched,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.cached != null) {
      yield r'cached';
      yield serializers.serialize(
        object.cached,
        specifiedType: const FullType(bool),
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
    if (object.restricted != null) {
      yield r'restricted';
      yield serializers.serialize(
        object.restricted,
        specifiedType: const FullType.nullable(ReadRestriction),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'requested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.requested = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.author = valueDes;
          break;
        case r'published':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.published = valueDes;
          break;
        case r'site':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.site = valueDes;
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadResponseFormatEnum),
          ) as ReadResponseFormatEnum;
          result.format = valueDes;
          break;
        case r'markdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.markdown = valueDes;
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
            specifiedType: const FullType(int),
          ) as int;
          result.chars = valueDes;
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.truncated = valueDes;
          break;
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReadSection)]),
          ) as BuiltList<ReadSection>;
          result.sections.replace(valueDes);
          break;
        case r'fetched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.fetched = valueDes;
          break;
        case r'cached':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.cached = valueDes;
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
        case r'restricted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReadRestriction),
          ) as ReadRestriction?;
          if (valueDes == null) continue;
          result.restricted.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadResponseBuilder();
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


class ReadResponseFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'markdown')
  static const ReadResponseFormatEnum markdown = _$readResponseFormatEnum_markdown;
  @BuiltValueEnumConst(wireName: r'text')
  static const ReadResponseFormatEnum text = _$readResponseFormatEnum_text;

  static Serializer<ReadResponseFormatEnum> get serializer => _$readResponseFormatEnumSerializer;

  const ReadResponseFormatEnum._(String name): super(name);

  static BuiltSet<ReadResponseFormatEnum> get values => _$readResponseFormatEnumValues;
  static ReadResponseFormatEnum valueOf(String name) => _$readResponseFormatEnumValueOf(name);
}

