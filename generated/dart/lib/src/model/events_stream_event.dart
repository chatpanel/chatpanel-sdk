//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_stream_event.g.dart';

/// EventsStreamEvent
///
/// Properties:
/// * [event] - The SSE event name.
/// * [cursor] - `{ host: seq }` — the highest seq held per host.
/// * [count] 
/// * [version] 
@BuiltValue()
abstract class EventsStreamEvent implements Built<EventsStreamEvent, EventsStreamEventBuilder> {
  /// The SSE event name.
  @BuiltValueField(wireName: r'event')
  EventsStreamEventEventEnum get event;
  // enum eventEnum {  hello,  cloudevent,  };

  /// `{ host: seq }` — the highest seq held per host.
  @BuiltValueField(wireName: r'cursor')
  BuiltMap<String, int>? get cursor;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'version')
  String? get version;

  EventsStreamEvent._();

  factory EventsStreamEvent([void updates(EventsStreamEventBuilder b)]) = _$EventsStreamEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsStreamEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsStreamEvent> get serializer => _$EventsStreamEventSerializer();
}

class _$EventsStreamEventSerializer implements PrimitiveSerializer<EventsStreamEvent> {
  @override
  final Iterable<Type> types = const [EventsStreamEvent, _$EventsStreamEvent];

  @override
  final String wireName = r'EventsStreamEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(EventsStreamEventEventEnum),
    );
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsStreamEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventsStreamEventEventEnum),
          ) as EventsStreamEventEventEnum;
          result.event = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsStreamEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsStreamEventBuilder();
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


/// The SSE event name.
class EventsStreamEventEventEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hello')
  static const EventsStreamEventEventEnum hello = _$eventsStreamEventEventEnum_hello;
  @BuiltValueEnumConst(wireName: r'cloudevent')
  static const EventsStreamEventEventEnum cloudevent = _$eventsStreamEventEventEnum_cloudevent;

  static Serializer<EventsStreamEventEventEnum> get serializer => _$eventsStreamEventEventEnumSerializer;

  const EventsStreamEventEventEnum._(String name): super(name);

  static BuiltSet<EventsStreamEventEventEnum> get values => _$eventsStreamEventEventEnumValues;
  static EventsStreamEventEventEnum valueOf(String name) => _$eventsStreamEventEventEnumValueOf(name);
}

