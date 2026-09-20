//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_search_request.g.dart';

/// WebSearchRequest
///
/// Properties:
/// * [q] 
/// * [limit] 
/// * [lang] - en or en-US; honoured by SearXNG.
/// * [site] - A hostname — the site: operator.
/// * [freshness] - Honoured by SearXNG (time_range); week maps to month.
/// * [read] - Read the top N results in this request.
/// * [provider] - One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise.
/// * [budgetMs] 
@BuiltValue()
abstract class WebSearchRequest implements Built<WebSearchRequest, WebSearchRequestBuilder> {
  @BuiltValueField(wireName: r'q')
  String get q;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// en or en-US; honoured by SearXNG.
  @BuiltValueField(wireName: r'lang')
  String? get lang;

  /// A hostname — the site: operator.
  @BuiltValueField(wireName: r'site')
  String? get site;

  /// Honoured by SearXNG (time_range); week maps to month.
  @BuiltValueField(wireName: r'freshness')
  WebSearchRequestFreshnessEnum? get freshness;
  // enum freshnessEnum {  day,  week,  month,  year,  };

  /// Read the top N results in this request.
  @BuiltValueField(wireName: r'read')
  int? get read;

  /// One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise.
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  WebSearchRequest._();

  factory WebSearchRequest([void updates(WebSearchRequestBuilder b)]) = _$WebSearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebSearchRequestBuilder b) => b
      ..limit = 8
      ..read = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebSearchRequest> get serializer => _$WebSearchRequestSerializer();
}

class _$WebSearchRequestSerializer implements PrimitiveSerializer<WebSearchRequest> {
  @override
  final Iterable<Type> types = const [WebSearchRequest, _$WebSearchRequest];

  @override
  final String wireName = r'WebSearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'q';
    yield serializers.serialize(
      object.q,
      specifiedType: const FullType(String),
    );
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
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
    if (object.freshness != null) {
      yield r'freshness';
      yield serializers.serialize(
        object.freshness,
        specifiedType: const FullType(WebSearchRequestFreshnessEnum),
      );
    }
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType(int),
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
    WebSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebSearchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'q':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.q = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'site':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.site = valueDes;
          break;
        case r'freshness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WebSearchRequestFreshnessEnum),
          ) as WebSearchRequestFreshnessEnum?;
          if (valueDes == null) continue;
          result.freshness = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.read = valueDes;
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
  WebSearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebSearchRequestBuilder();
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


/// Honoured by SearXNG (time_range); week maps to month.
class WebSearchRequestFreshnessEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'day')
  static const WebSearchRequestFreshnessEnum day = _$webSearchRequestFreshnessEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const WebSearchRequestFreshnessEnum week = _$webSearchRequestFreshnessEnum_week;
  @BuiltValueEnumConst(wireName: r'month')
  static const WebSearchRequestFreshnessEnum month = _$webSearchRequestFreshnessEnum_month;
  @BuiltValueEnumConst(wireName: r'year')
  static const WebSearchRequestFreshnessEnum year = _$webSearchRequestFreshnessEnum_year;

  static Serializer<WebSearchRequestFreshnessEnum> get serializer => _$webSearchRequestFreshnessEnumSerializer;

  const WebSearchRequestFreshnessEnum._(String name): super(name);

  static BuiltSet<WebSearchRequestFreshnessEnum> get values => _$webSearchRequestFreshnessEnumValues;
  static WebSearchRequestFreshnessEnum valueOf(String name) => _$webSearchRequestFreshnessEnumValueOf(name);
}

