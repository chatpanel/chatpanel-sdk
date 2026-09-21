//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rerank_result.g.dart';

/// RerankResult
///
/// Properties:
/// * [index] - Into the request's documents.
/// * [relevanceScore] 
@BuiltValue()
abstract class RerankResult implements Built<RerankResult, RerankResultBuilder> {
  /// Into the request's documents.
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'relevance_score')
  num get relevanceScore;

  RerankResult._();

  factory RerankResult([void updates(RerankResultBuilder b)]) = _$RerankResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RerankResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RerankResult> get serializer => _$RerankResultSerializer();
}

class _$RerankResultSerializer implements PrimitiveSerializer<RerankResult> {
  @override
  final Iterable<Type> types = const [RerankResult, _$RerankResult];

  @override
  final String wireName = r'RerankResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RerankResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'relevance_score';
    yield serializers.serialize(
      object.relevanceScore,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RerankResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RerankResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'relevance_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.relevanceScore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RerankResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RerankResultBuilder();
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


