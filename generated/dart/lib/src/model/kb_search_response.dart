//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_passage.dart';
import 'package:chatpanel/src/model/kb_search_response_lanes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_search_response.g.dart';

/// KbSearchResponse
///
/// Properties:
/// * [results] 
/// * [lanes] 
/// * [queries] - The query shapes searched.
/// * [ms] 
@BuiltValue()
abstract class KbSearchResponse implements Built<KbSearchResponse, KbSearchResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<KbPassage> get results;

  @BuiltValueField(wireName: r'lanes')
  KbSearchResponseLanes get lanes;

  /// The query shapes searched.
  @BuiltValueField(wireName: r'queries')
  BuiltList<String> get queries;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  KbSearchResponse._();

  factory KbSearchResponse([void updates(KbSearchResponseBuilder b)]) = _$KbSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbSearchResponse> get serializer => _$KbSearchResponseSerializer();
}

class _$KbSearchResponseSerializer implements PrimitiveSerializer<KbSearchResponse> {
  @override
  final Iterable<Type> types = const [KbSearchResponse, _$KbSearchResponse];

  @override
  final String wireName = r'KbSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(KbPassage)]),
    );
    yield r'lanes';
    yield serializers.serialize(
      object.lanes,
      specifiedType: const FullType(KbSearchResponseLanes),
    );
    yield r'queries';
    yield serializers.serialize(
      object.queries,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    KbSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbPassage)]),
          ) as BuiltList<KbPassage>;
          result.results.replace(valueDes);
          break;
        case r'lanes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbSearchResponseLanes),
          ) as KbSearchResponseLanes;
          result.lanes.replace(valueDes);
          break;
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.queries.replace(valueDes);
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
  KbSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbSearchResponseBuilder();
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


