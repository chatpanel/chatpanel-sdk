//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_deleted.g.dart';

/// EventsDeleted
///
/// Properties:
/// * [ok] 
/// * [deleted] - How many events went.
/// * [host] 
/// * [all] 
/// * [cursor] - `{ host: seq }` — the highest seq held per host.
@BuiltValue()
abstract class EventsDeleted implements Built<EventsDeleted, EventsDeletedBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// How many events went.
  @BuiltValueField(wireName: r'deleted')
  int get deleted;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'all')
  bool? get all;

  /// `{ host: seq }` — the highest seq held per host.
  @BuiltValueField(wireName: r'cursor')
  BuiltMap<String, int> get cursor;

  EventsDeleted._();

  factory EventsDeleted([void updates(EventsDeletedBuilder b)]) = _$EventsDeleted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsDeletedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsDeleted> get serializer => _$EventsDeletedSerializer();
}

class _$EventsDeletedSerializer implements PrimitiveSerializer<EventsDeleted> {
  @override
  final Iterable<Type> types = const [EventsDeleted, _$EventsDeleted];

  @override
  final String wireName = r'EventsDeleted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'deleted';
    yield serializers.serialize(
      object.deleted,
      specifiedType: const FullType(int),
    );
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.all != null) {
      yield r'all';
      yield serializers.serialize(
        object.all,
        specifiedType: const FullType(bool),
      );
    }
    yield r'cursor';
    yield serializers.serialize(
      object.cursor,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsDeleted object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsDeletedBuilder result,
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
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deleted = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.all = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.cursor.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsDeleted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsDeletedBuilder();
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


