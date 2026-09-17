//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/search_hit.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_related200_response.g.dart';

/// HistoryRelated200Response
///
/// Properties:
/// * [ok] 
/// * [results] 
@BuiltValue()
abstract class HistoryRelated200Response implements Built<HistoryRelated200Response, HistoryRelated200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'results')
  BuiltList<SearchHit> get results;

  HistoryRelated200Response._();

  factory HistoryRelated200Response([void updates(HistoryRelated200ResponseBuilder b)]) = _$HistoryRelated200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryRelated200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryRelated200Response> get serializer => _$HistoryRelated200ResponseSerializer();
}

class _$HistoryRelated200ResponseSerializer implements PrimitiveSerializer<HistoryRelated200Response> {
  @override
  final Iterable<Type> types = const [HistoryRelated200Response, _$HistoryRelated200Response];

  @override
  final String wireName = r'HistoryRelated200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryRelated200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(SearchHit)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryRelated200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryRelated200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SearchHit)]),
          ) as BuiltList<SearchHit>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryRelated200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryRelated200ResponseBuilder();
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


