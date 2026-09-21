//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/events_stats_stats.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_stats.g.dart';

/// EventsStats
///
/// Properties:
/// * [ok] 
/// * [stats] 
/// * [year] - `eventsPerYear`, `bytesPerYear`, `daysToCap` at the observed rate; null before there is a span.
@BuiltValue()
abstract class EventsStats implements Built<EventsStats, EventsStatsBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'stats')
  EventsStatsStats get stats;

  /// `eventsPerYear`, `bytesPerYear`, `daysToCap` at the observed rate; null before there is a span.
  @BuiltValueField(wireName: r'year')
  BuiltMap<String, JsonObject?>? get year;

  EventsStats._();

  factory EventsStats([void updates(EventsStatsBuilder b)]) = _$EventsStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsStats> get serializer => _$EventsStatsSerializer();
}

class _$EventsStatsSerializer implements PrimitiveSerializer<EventsStats> {
  @override
  final Iterable<Type> types = const [EventsStats, _$EventsStats];

  @override
  final String wireName = r'EventsStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'stats';
    yield serializers.serialize(
      object.stats,
      specifiedType: const FullType(EventsStatsStats),
    );
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsStatsBuilder result,
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
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventsStatsStats),
          ) as EventsStatsStats;
          result.stats = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.year.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsStatsBuilder();
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


