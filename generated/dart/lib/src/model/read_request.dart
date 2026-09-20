//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_request.g.dart';

/// ReadRequest
///
/// Properties:
/// * [url] - Absolute http(s) URL of a public page.
/// * [format] 
/// * [maxChars] - Cut at a section boundary near this length; `truncated` says so.
/// * [snippet] - A search snippet to stand in for the content when the page cannot be read.
/// * [provider] - One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise.
/// * [budgetMs] - Refused before fetching if the provider's record predicts it cannot be met.
@BuiltValue()
abstract class ReadRequest implements Built<ReadRequest, ReadRequestBuilder> {
  /// Absolute http(s) URL of a public page.
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'format')
  ReadRequestFormatEnum? get format;
  // enum formatEnum {  markdown,  text,  };

  /// Cut at a section boundary near this length; `truncated` says so.
  @BuiltValueField(wireName: r'maxChars')
  int? get maxChars;

  /// A search snippet to stand in for the content when the page cannot be read.
  @BuiltValueField(wireName: r'snippet')
  String? get snippet;

  /// One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise.
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  /// Refused before fetching if the provider's record predicts it cannot be met.
  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  ReadRequest._();

  factory ReadRequest([void updates(ReadRequestBuilder b)]) = _$ReadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadRequestBuilder b) => b
      ..format = ReadRequestFormatEnum.valueOf('markdown');

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadRequest> get serializer => _$ReadRequestSerializer();
}

class _$ReadRequestSerializer implements PrimitiveSerializer<ReadRequest> {
  @override
  final Iterable<Type> types = const [ReadRequest, _$ReadRequest];

  @override
  final String wireName = r'ReadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(ReadRequestFormatEnum),
      );
    }
    if (object.maxChars != null) {
      yield r'maxChars';
      yield serializers.serialize(
        object.maxChars,
        specifiedType: const FullType(int),
      );
    }
    if (object.snippet != null) {
      yield r'snippet';
      yield serializers.serialize(
        object.snippet,
        specifiedType: const FullType(String),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.budgetMs != null) {
      yield r'budgetMs';
      yield serializers.serialize(
        object.budgetMs,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadRequestBuilder result,
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
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReadRequestFormatEnum),
          ) as ReadRequestFormatEnum?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'maxChars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxChars = valueDes;
          break;
        case r'snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.snippet = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'budgetMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.budgetMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadRequestBuilder();
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


class ReadRequestFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'markdown')
  static const ReadRequestFormatEnum markdown = _$readRequestFormatEnum_markdown;
  @BuiltValueEnumConst(wireName: r'text')
  static const ReadRequestFormatEnum text = _$readRequestFormatEnum_text;

  static Serializer<ReadRequestFormatEnum> get serializer => _$readRequestFormatEnumSerializer;

  const ReadRequestFormatEnum._(String name): super(name);

  static BuiltSet<ReadRequestFormatEnum> get values => _$readRequestFormatEnumValues;
  static ReadRequestFormatEnum valueOf(String name) => _$readRequestFormatEnumValueOf(name);
}

