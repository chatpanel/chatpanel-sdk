//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_search_request.g.dart';

/// KbSearchRequest
///
/// Properties:
/// * [query] 
/// * [limit] 
/// * [hops] - Graph expansion of the best hits; 0 = off.
/// * [docs] - Only these documents.
/// * [queries] - The caller's own phrasings, searched too.
/// * [rerank] - `false`: skip the reranker.
/// * [budgetMs] 
@BuiltValue()
abstract class KbSearchRequest implements Built<KbSearchRequest, KbSearchRequestBuilder> {
  @BuiltValueField(wireName: r'query')
  String get query;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Graph expansion of the best hits; 0 = off.
  @BuiltValueField(wireName: r'hops')
  int? get hops;

  /// Only these documents.
  @BuiltValueField(wireName: r'docs')
  BuiltList<String>? get docs;

  /// The caller's own phrasings, searched too.
  @BuiltValueField(wireName: r'queries')
  BuiltList<String>? get queries;

  /// `false`: skip the reranker.
  @BuiltValueField(wireName: r'rerank')
  bool? get rerank;

  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  KbSearchRequest._();

  factory KbSearchRequest([void updates(KbSearchRequestBuilder b)]) = _$KbSearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbSearchRequestBuilder b) => b
      ..limit = 10
      ..hops = 1
      ..rerank = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbSearchRequest> get serializer => _$KbSearchRequestSerializer();
}

class _$KbSearchRequestSerializer implements PrimitiveSerializer<KbSearchRequest> {
  @override
  final Iterable<Type> types = const [KbSearchRequest, _$KbSearchRequest];

  @override
  final String wireName = r'KbSearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(String),
    );
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.hops != null) {
      yield r'hops';
      yield serializers.serialize(
        object.hops,
        specifiedType: const FullType(int),
      );
    }
    if (object.docs != null) {
      yield r'docs';
      yield serializers.serialize(
        object.docs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.queries != null) {
      yield r'queries';
      yield serializers.serialize(
        object.queries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rerank != null) {
      yield r'rerank';
      yield serializers.serialize(
        object.rerank,
        specifiedType: const FullType(bool),
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
    KbSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbSearchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.query = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'hops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.hops = valueDes;
          break;
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.docs.replace(valueDes);
          break;
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.queries.replace(valueDes);
          break;
        case r'rerank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.rerank = valueDes;
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
  KbSearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbSearchRequestBuilder();
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


