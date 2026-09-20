//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/retrieval_search_alias200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retrieval_search_alias200_response.g.dart';

/// RetrievalSearchAlias200Response
///
/// Properties:
/// * [code] 
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class RetrievalSearchAlias200Response implements Built<RetrievalSearchAlias200Response, RetrievalSearchAlias200ResponseBuilder> {
  @BuiltValueField(wireName: r'code')
  int get code;

  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<RetrievalSearchAlias200ResponseDataInner> get data;

  RetrievalSearchAlias200Response._();

  factory RetrievalSearchAlias200Response([void updates(RetrievalSearchAlias200ResponseBuilder b)]) = _$RetrievalSearchAlias200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetrievalSearchAlias200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetrievalSearchAlias200Response> get serializer => _$RetrievalSearchAlias200ResponseSerializer();
}

class _$RetrievalSearchAlias200ResponseSerializer implements PrimitiveSerializer<RetrievalSearchAlias200Response> {
  @override
  final Iterable<Type> types = const [RetrievalSearchAlias200Response, _$RetrievalSearchAlias200Response];

  @override
  final String wireName = r'RetrievalSearchAlias200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetrievalSearchAlias200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(int),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(RetrievalSearchAlias200ResponseDataInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RetrievalSearchAlias200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RetrievalSearchAlias200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RetrievalSearchAlias200ResponseDataInner)]),
          ) as BuiltList<RetrievalSearchAlias200ResponseDataInner>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetrievalSearchAlias200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetrievalSearchAlias200ResponseBuilder();
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


