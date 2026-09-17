//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'records_page.g.dart';

/// RecordsPage
///
/// Properties:
/// * [ok] 
/// * [records] - Whole records; a tombstone carries `deletedAt`.
/// * [next] - The cursor for the next page — pass it as `cursor`; absent on the last page.
/// * [size] 
/// * [newest] 
@BuiltValue()
abstract class RecordsPage implements Built<RecordsPage, RecordsPageBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// Whole records; a tombstone carries `deletedAt`.
  @BuiltValueField(wireName: r'records')
  BuiltList<BuiltMap<String, JsonObject?>> get records;

  /// The cursor for the next page — pass it as `cursor`; absent on the last page.
  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'newest')
  int? get newest;

  RecordsPage._();

  factory RecordsPage([void updates(RecordsPageBuilder b)]) = _$RecordsPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordsPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordsPage> get serializer => _$RecordsPageSerializer();
}

class _$RecordsPageSerializer implements PrimitiveSerializer<RecordsPage> {
  @override
  final Iterable<Type> types = const [RecordsPage, _$RecordsPage];

  @override
  final String wireName = r'RecordsPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordsPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordsPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordsPageBuilder result,
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
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.records.replace(valueDes);
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordsPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordsPageBuilder();
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


