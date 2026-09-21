//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_cursor.g.dart';

/// EventsCursor
///
/// Properties:
/// * [ok] 
/// * [cursor] - `{ host: seq }` — the highest seq held per host.
/// * [count] 
@BuiltValue()
abstract class EventsCursor implements Built<EventsCursor, EventsCursorBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// `{ host: seq }` — the highest seq held per host.
  @BuiltValueField(wireName: r'cursor')
  BuiltMap<String, int> get cursor;

  @BuiltValueField(wireName: r'count')
  int? get count;

  EventsCursor._();

  factory EventsCursor([void updates(EventsCursorBuilder b)]) = _$EventsCursor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsCursorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsCursor> get serializer => _$EventsCursorSerializer();
}

class _$EventsCursorSerializer implements PrimitiveSerializer<EventsCursor> {
  @override
  final Iterable<Type> types = const [EventsCursor, _$EventsCursor];

  @override
  final String wireName = r'EventsCursor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsCursor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'cursor';
    yield serializers.serialize(
      object.cursor,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsCursor object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsCursorBuilder result,
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
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.cursor.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsCursor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsCursorBuilder();
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


