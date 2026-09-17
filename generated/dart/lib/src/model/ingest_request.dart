//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/ingest_request_upserts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_request.g.dart';

/// IngestRequest
///
/// Properties:
/// * [upserts] 
/// * [removes] 
@BuiltValue()
abstract class IngestRequest implements Built<IngestRequest, IngestRequestBuilder> {
  @BuiltValueField(wireName: r'upserts')
  BuiltList<IngestRequestUpsertsInner>? get upserts;

  @BuiltValueField(wireName: r'removes')
  BuiltList<String>? get removes;

  IngestRequest._();

  factory IngestRequest([void updates(IngestRequestBuilder b)]) = _$IngestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRequest> get serializer => _$IngestRequestSerializer();
}

class _$IngestRequestSerializer implements PrimitiveSerializer<IngestRequest> {
  @override
  final Iterable<Type> types = const [IngestRequest, _$IngestRequest];

  @override
  final String wireName = r'IngestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.upserts != null) {
      yield r'upserts';
      yield serializers.serialize(
        object.upserts,
        specifiedType: const FullType(BuiltList, [FullType(IngestRequestUpsertsInner)]),
      );
    }
    if (object.removes != null) {
      yield r'removes';
      yield serializers.serialize(
        object.removes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'upserts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(IngestRequestUpsertsInner)]),
          ) as BuiltList<IngestRequestUpsertsInner>?;
          if (valueDes == null) continue;
          result.upserts.replace(valueDes);
          break;
        case r'removes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.removes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRequestBuilder();
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


