//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'put_records_request.g.dart';

/// PutRecordsRequest
///
/// Properties:
/// * [host] - Who is pushing — recorded on every record.
/// * [at] 
/// * [records] 
/// * [entries] - Sealed backup entries, opened with the stored passphrase.
@BuiltValue()
abstract class PutRecordsRequest implements Built<PutRecordsRequest, PutRecordsRequestBuilder> {
  /// Who is pushing — recorded on every record.
  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'at')
  int? get at;

  @BuiltValueField(wireName: r'records')
  BuiltList<BuiltMap<String, JsonObject?>>? get records;

  /// Sealed backup entries, opened with the stored passphrase.
  @BuiltValueField(wireName: r'entries')
  BuiltList<BuiltMap<String, JsonObject?>>? get entries;

  PutRecordsRequest._();

  factory PutRecordsRequest([void updates(PutRecordsRequestBuilder b)]) = _$PutRecordsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PutRecordsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PutRecordsRequest> get serializer => _$PutRecordsRequestSerializer();
}

class _$PutRecordsRequestSerializer implements PrimitiveSerializer<PutRecordsRequest> {
  @override
  final Iterable<Type> types = const [PutRecordsRequest, _$PutRecordsRequest];

  @override
  final String wireName = r'PutRecordsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PutRecordsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(int),
      );
    }
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.entries != null) {
      yield r'entries';
      yield serializers.serialize(
        object.entries,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PutRecordsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PutRecordsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.records.replace(valueDes);
          break;
        case r'entries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.entries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PutRecordsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsRequestBuilder();
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


