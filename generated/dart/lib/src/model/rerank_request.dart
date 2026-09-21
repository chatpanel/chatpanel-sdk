//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rerank_request.g.dart';

/// RerankRequest
///
/// Properties:
/// * [query] 
/// * [documents] 
/// * [topN] - Return only the best this many.
/// * [model] - The model this provider serves; 404 otherwise.
/// * [budgetMs] - Refused before dialling if the gateway's record predicts it cannot be met.
@BuiltValue()
abstract class RerankRequest implements Built<RerankRequest, RerankRequestBuilder> {
  @BuiltValueField(wireName: r'query')
  String get query;

  @BuiltValueField(wireName: r'documents')
  BuiltList<String> get documents;

  /// Return only the best this many.
  @BuiltValueField(wireName: r'top_n')
  int? get topN;

  /// The model this provider serves; 404 otherwise.
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// Refused before dialling if the gateway's record predicts it cannot be met.
  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  RerankRequest._();

  factory RerankRequest([void updates(RerankRequestBuilder b)]) = _$RerankRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RerankRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RerankRequest> get serializer => _$RerankRequestSerializer();
}

class _$RerankRequestSerializer implements PrimitiveSerializer<RerankRequest> {
  @override
  final Iterable<Type> types = const [RerankRequest, _$RerankRequest];

  @override
  final String wireName = r'RerankRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RerankRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(String),
    );
    yield r'documents';
    yield serializers.serialize(
      object.documents,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.topN != null) {
      yield r'top_n';
      yield serializers.serialize(
        object.topN,
        specifiedType: const FullType(int),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
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
    RerankRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RerankRequestBuilder result,
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
        case r'documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.documents.replace(valueDes);
          break;
        case r'top_n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.topN = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
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
  RerankRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RerankRequestBuilder();
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


