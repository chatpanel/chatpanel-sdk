//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/read_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retrieval_read_alias200_response.g.dart';

/// RetrievalReadAlias200Response
///
/// Properties:
/// * [code] 
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class RetrievalReadAlias200Response implements Built<RetrievalReadAlias200Response, RetrievalReadAlias200ResponseBuilder> {
  @BuiltValueField(wireName: r'code')
  int get code;

  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'data')
  ReadResponse get data;

  RetrievalReadAlias200Response._();

  factory RetrievalReadAlias200Response([void updates(RetrievalReadAlias200ResponseBuilder b)]) = _$RetrievalReadAlias200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetrievalReadAlias200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetrievalReadAlias200Response> get serializer => _$RetrievalReadAlias200ResponseSerializer();
}

class _$RetrievalReadAlias200ResponseSerializer implements PrimitiveSerializer<RetrievalReadAlias200Response> {
  @override
  final Iterable<Type> types = const [RetrievalReadAlias200Response, _$RetrievalReadAlias200Response];

  @override
  final String wireName = r'RetrievalReadAlias200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetrievalReadAlias200Response object, {
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
      specifiedType: const FullType(ReadResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RetrievalReadAlias200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RetrievalReadAlias200ResponseBuilder result,
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
            specifiedType: const FullType(ReadResponse),
          ) as ReadResponse;
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
  RetrievalReadAlias200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetrievalReadAlias200ResponseBuilder();
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


