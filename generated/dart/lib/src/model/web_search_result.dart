//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/read_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_search_result.g.dart';

/// WebSearchResult
///
/// Properties:
/// * [rank] 
/// * [url] 
/// * [title] 
/// * [snippet] 
/// * [engine] - The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked).
/// * [engines] - SearXNG: every engine that returned it.
/// * [score] - SearXNG's fused score.
/// * [publishedDate] 
/// * [read] - Present for the top `read` results.
@BuiltValue()
abstract class WebSearchResult implements Built<WebSearchResult, WebSearchResultBuilder> {
  @BuiltValueField(wireName: r'rank')
  int get rank;

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'snippet')
  String get snippet;

  /// The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked).
  @BuiltValueField(wireName: r'engine')
  String? get engine;

  /// SearXNG: every engine that returned it.
  @BuiltValueField(wireName: r'engines')
  BuiltList<String>? get engines;

  /// SearXNG's fused score.
  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'publishedDate')
  String? get publishedDate;

  /// Present for the top `read` results.
  @BuiltValueField(wireName: r'read')
  ReadResponse? get read;

  WebSearchResult._();

  factory WebSearchResult([void updates(WebSearchResultBuilder b)]) = _$WebSearchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebSearchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebSearchResult> get serializer => _$WebSearchResultSerializer();
}

class _$WebSearchResultSerializer implements PrimitiveSerializer<WebSearchResult> {
  @override
  final Iterable<Type> types = const [WebSearchResult, _$WebSearchResult];

  @override
  final String wireName = r'WebSearchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebSearchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rank';
    yield serializers.serialize(
      object.rank,
      specifiedType: const FullType(int),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'snippet';
    yield serializers.serialize(
      object.snippet,
      specifiedType: const FullType(String),
    );
    if (object.engine != null) {
      yield r'engine';
      yield serializers.serialize(
        object.engine,
        specifiedType: const FullType(String),
      );
    }
    if (object.engines != null) {
      yield r'engines';
      yield serializers.serialize(
        object.engines,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(num),
      );
    }
    if (object.publishedDate != null) {
      yield r'publishedDate';
      yield serializers.serialize(
        object.publishedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType(ReadResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebSearchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebSearchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rank = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.snippet = valueDes;
          break;
        case r'engine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.engine = valueDes;
          break;
        case r'engines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.engines.replace(valueDes);
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'publishedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publishedDate = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReadResponse),
          ) as ReadResponse?;
          if (valueDes == null) continue;
          result.read.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebSearchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebSearchResultBuilder();
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


