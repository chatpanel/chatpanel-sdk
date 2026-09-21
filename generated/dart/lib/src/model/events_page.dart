//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/cloud_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_page.g.dart';

/// EventsPage
///
/// Properties:
/// * [ok] 
/// * [events] 
/// * [cursor] - Pass back as `cursor` for the next page.
/// * [more] 
@BuiltValue()
abstract class EventsPage implements Built<EventsPage, EventsPageBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'events')
  BuiltList<CloudEvent> get events;

  /// Pass back as `cursor` for the next page.
  @BuiltValueField(wireName: r'cursor')
  BuiltMap<String, int> get cursor;

  @BuiltValueField(wireName: r'more')
  bool get more;

  EventsPage._();

  factory EventsPage([void updates(EventsPageBuilder b)]) = _$EventsPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsPage> get serializer => _$EventsPageSerializer();
}

class _$EventsPageSerializer implements PrimitiveSerializer<EventsPage> {
  @override
  final Iterable<Type> types = const [EventsPage, _$EventsPage];

  @override
  final String wireName = r'EventsPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(CloudEvent)]),
    );
    yield r'cursor';
    yield serializers.serialize(
      object.cursor,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
    yield r'more';
    yield serializers.serialize(
      object.more,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsPageBuilder result,
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
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CloudEvent)]),
          ) as BuiltList<CloudEvent>;
          result.events.replace(valueDes);
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.cursor.replace(valueDes);
          break;
        case r'more':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.more = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsPageBuilder();
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


