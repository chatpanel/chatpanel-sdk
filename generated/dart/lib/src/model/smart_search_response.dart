//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/search_hit.dart';
import 'package:chatpanel/src/model/search_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smart_search_response.g.dart';

/// SmartSearchResponse
///
/// Properties:
/// * [ok] 
/// * [size] 
/// * [newest] 
/// * [results] 
/// * [queries] 
@BuiltValue()
abstract class SmartSearchResponse implements SearchResponse, Built<SmartSearchResponse, SmartSearchResponseBuilder> {
  @BuiltValueField(wireName: r'queries')
  BuiltList<String>? get queries;

  SmartSearchResponse._();

  factory SmartSearchResponse([void updates(SmartSearchResponseBuilder b)]) = _$SmartSearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmartSearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmartSearchResponse> get serializer => _$SmartSearchResponseSerializer();
}

class _$SmartSearchResponseSerializer implements PrimitiveSerializer<SmartSearchResponse> {
  @override
  final Iterable<Type> types = const [SmartSearchResponse, _$SmartSearchResponse];

  @override
  final String wireName = r'SmartSearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmartSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.queries != null) {
      yield r'queries';
      yield serializers.serialize(
        object.queries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType(int),
      );
    }
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(SearchHit)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SmartSearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SmartSearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.queries.replace(valueDes);
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
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
  SmartSearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmartSearchResponseBuilder();
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


