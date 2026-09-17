//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/memory.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'memory_list.g.dart';

/// MemoryList
///
/// Properties:
/// * [ok] 
/// * [size] 
/// * [memories] 
@BuiltValue()
abstract class MemoryList implements Built<MemoryList, MemoryListBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'memories')
  BuiltList<Memory> get memories;

  MemoryList._();

  factory MemoryList([void updates(MemoryListBuilder b)]) = _$MemoryList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemoryListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemoryList> get serializer => _$MemoryListSerializer();
}

class _$MemoryListSerializer implements PrimitiveSerializer<MemoryList> {
  @override
  final Iterable<Type> types = const [MemoryList, _$MemoryList];

  @override
  final String wireName = r'MemoryList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemoryList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    yield r'memories';
    yield serializers.serialize(
      object.memories,
      specifiedType: const FullType(BuiltList, [FullType(Memory)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MemoryList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemoryListBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'memories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Memory)]),
          ) as BuiltList<Memory>;
          result.memories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MemoryList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryListBuilder();
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


