//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'put_records_response.g.dart';

/// PutRecordsResponse
///
/// Properties:
/// * [ok] 
/// * [written] 
/// * [ids] 
/// * [sealed_] 
/// * [size] 
/// * [revs] - Each written record's new revision (gateway 0.63.0+).
/// * [conflicts] - The current record for each one sent with a `baseRev` that is no longer current — merge and send again.
/// * [rev] - The newest revision after this write.
@BuiltValue()
abstract class PutRecordsResponse implements Built<PutRecordsResponse, PutRecordsResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'written')
  int get written;

  @BuiltValueField(wireName: r'ids')
  BuiltList<String>? get ids;

  @BuiltValueField(wireName: r'sealed')
  int? get sealed_;

  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Each written record's new revision (gateway 0.63.0+).
  @BuiltValueField(wireName: r'revs')
  BuiltMap<String, int>? get revs;

  /// The current record for each one sent with a `baseRev` that is no longer current — merge and send again.
  @BuiltValueField(wireName: r'conflicts')
  BuiltList<BuiltMap<String, JsonObject?>>? get conflicts;

  /// The newest revision after this write.
  @BuiltValueField(wireName: r'rev')
  int? get rev;

  PutRecordsResponse._();

  factory PutRecordsResponse([void updates(PutRecordsResponseBuilder b)]) = _$PutRecordsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PutRecordsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PutRecordsResponse> get serializer => _$PutRecordsResponseSerializer();
}

class _$PutRecordsResponseSerializer implements PrimitiveSerializer<PutRecordsResponse> {
  @override
  final Iterable<Type> types = const [PutRecordsResponse, _$PutRecordsResponse];

  @override
  final String wireName = r'PutRecordsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PutRecordsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'written';
    yield serializers.serialize(
      object.written,
      specifiedType: const FullType(int),
    );
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sealed_ != null) {
      yield r'sealed';
      yield serializers.serialize(
        object.sealed_,
        specifiedType: const FullType(int),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.revs != null) {
      yield r'revs';
      yield serializers.serialize(
        object.revs,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.conflicts != null) {
      yield r'conflicts';
      yield serializers.serialize(
        object.conflicts,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.rev != null) {
      yield r'rev';
      yield serializers.serialize(
        object.rev,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PutRecordsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PutRecordsResponseBuilder result,
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
        case r'written':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.written = valueDes;
          break;
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ids.replace(valueDes);
          break;
        case r'sealed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sealed_ = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'revs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.revs.replace(valueDes);
          break;
        case r'conflicts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.conflicts.replace(valueDes);
          break;
        case r'rev':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rev = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PutRecordsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsResponseBuilder();
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


