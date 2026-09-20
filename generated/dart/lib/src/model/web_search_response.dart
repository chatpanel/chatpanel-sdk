//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/web_search_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_search_response.g.dart';

/// WebSearchResponse
///
/// Properties:
/// * [results] 
/// * [answers] - SearXNG's direct answers, when it had any.
/// * [suggestions] 
/// * [engines] - What was actually asked.
/// * [unresponsive] - SearXNG engines that did not answer.
/// * [redacted] - Layer-1 redaction removed something from the query.
/// * [query] - The query as sent, when `redacted`.
/// * [provider] 
/// * [ms] 
@BuiltValue()
abstract class WebSearchResponse implements Built<WebSearchResponse, WebSearchResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<WebSearchResult> get results;

  /// SearXNG's direct answers, when it had any.
  @BuiltValueField(wireName: r'answers')
  BuiltList<String>? get answers;

  @BuiltValueField(wireName: r'suggestions')
  BuiltList<String>? get suggestions;

  /// What was actually asked.
  @BuiltValueField(wireName: r'engines')
  BuiltList<String>? get engines;

  /// SearXNG engines that did not answer.
  @BuiltValueField(wireName: r'unresponsive')
  BuiltList<String>? get unresponsive;

  /// Layer-1 redaction removed something from the query.
  @BuiltValueField(wireName: r'redacted')
  bool? get redacted;

  /// The query as sent, when `redacted`.
  @BuiltValueField(wireName: r'query')
  String? get query;

  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  WebSearchResponse._();

  factory WebSearchResponse([void updates(WebSearchResponseBuilder b)]) = _$WebSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebSearchResponse> get serializer => _$WebSearchResponseSerializer();
}

class _$WebSearchResponseSerializer implements PrimitiveSerializer<WebSearchResponse> {
  @override
  final Iterable<Type> types = const [WebSearchResponse, _$WebSearchResponse];

  @override
  final String wireName = r'WebSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(WebSearchResult)]),
    );
    if (object.answers != null) {
      yield r'answers';
      yield serializers.serialize(
        object.answers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.suggestions != null) {
      yield r'suggestions';
      yield serializers.serialize(
        object.suggestions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.engines != null) {
      yield r'engines';
      yield serializers.serialize(
        object.engines,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.unresponsive != null) {
      yield r'unresponsive';
      yield serializers.serialize(
        object.unresponsive,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.redacted != null) {
      yield r'redacted';
      yield serializers.serialize(
        object.redacted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
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
    WebSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WebSearchResult)]),
          ) as BuiltList<WebSearchResult>;
          result.results.replace(valueDes);
          break;
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.answers.replace(valueDes);
          break;
        case r'suggestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.suggestions.replace(valueDes);
          break;
        case r'engines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.engines.replace(valueDes);
          break;
        case r'unresponsive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.unresponsive.replace(valueDes);
          break;
        case r'redacted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.redacted = valueDes;
          break;
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.query = valueDes;
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
  WebSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebSearchResponseBuilder();
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


