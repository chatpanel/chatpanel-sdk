//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/memory.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'memory_sync_request.g.dart';

/// MemorySyncRequest
///
/// Properties:
/// * [upserts] 
/// * [removes] 
@BuiltValue()
abstract class MemorySyncRequest implements Built<MemorySyncRequest, MemorySyncRequestBuilder> {
  @BuiltValueField(wireName: r'upserts')
  BuiltList<Memory>? get upserts;

  @BuiltValueField(wireName: r'removes')
  BuiltList<String>? get removes;

  MemorySyncRequest._();

  factory MemorySyncRequest([void updates(MemorySyncRequestBuilder b)]) = _$MemorySyncRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemorySyncRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemorySyncRequest> get serializer => _$MemorySyncRequestSerializer();
}

class _$MemorySyncRequestSerializer implements PrimitiveSerializer<MemorySyncRequest> {
  @override
  final Iterable<Type> types = const [MemorySyncRequest, _$MemorySyncRequest];

  @override
  final String wireName = r'MemorySyncRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemorySyncRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.upserts != null) {
      yield r'upserts';
      yield serializers.serialize(
        object.upserts,
        specifiedType: const FullType(BuiltList, [FullType(Memory)]),
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
    MemorySyncRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemorySyncRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'upserts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Memory)]),
          ) as BuiltList<Memory>?;
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
  MemorySyncRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemorySyncRequestBuilder();
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


