//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/rerank_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rerank_response.g.dart';

/// RerankResponse
///
/// Properties:
/// * [results] - Distinct indexes, best first; at most top_n.
/// * [model] 
/// * [ms] 
@BuiltValue()
abstract class RerankResponse implements Built<RerankResponse, RerankResponseBuilder> {
  /// Distinct indexes, best first; at most top_n.
  @BuiltValueField(wireName: r'results')
  BuiltList<RerankResult> get results;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  RerankResponse._();

  factory RerankResponse([void updates(RerankResponseBuilder b)]) = _$RerankResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RerankResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RerankResponse> get serializer => _$RerankResponseSerializer();
}

class _$RerankResponseSerializer implements PrimitiveSerializer<RerankResponse> {
  @override
  final Iterable<Type> types = const [RerankResponse, _$RerankResponse];

  @override
  final String wireName = r'RerankResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RerankResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(RerankResult)]),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
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
    RerankResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RerankResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RerankResult)]),
          ) as BuiltList<RerankResult>;
          result.results.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
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
  RerankResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RerankResponseBuilder();
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


