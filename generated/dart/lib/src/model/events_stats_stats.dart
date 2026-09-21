//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_stats_stats.g.dart';

/// EventsStatsStats
///
/// Properties:
/// * [events] 
/// * [bytes] 
/// * [avgBytes] 
/// * [span] 
/// * [perDay] 
/// * [hosts] 
/// * [types] 
/// * [turns] 
/// * [refs] - `total`, `distinct`, `dedupHitRate` (percent).
/// * [toolCalls] 
@BuiltValue()
abstract class EventsStatsStats implements Built<EventsStatsStats, EventsStatsStatsBuilder> {
  @BuiltValueField(wireName: r'events')
  int? get events;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'avgBytes')
  int? get avgBytes;

  @BuiltValueField(wireName: r'span')
  BuiltMap<String, JsonObject?>? get span;

  @BuiltValueField(wireName: r'perDay')
  BuiltMap<String, JsonObject?>? get perDay;

  @BuiltValueField(wireName: r'hosts')
  BuiltMap<String, JsonObject?>? get hosts;

  @BuiltValueField(wireName: r'types')
  BuiltMap<String, int>? get types;

  @BuiltValueField(wireName: r'turns')
  BuiltMap<String, JsonObject?>? get turns;

  /// `total`, `distinct`, `dedupHitRate` (percent).
  @BuiltValueField(wireName: r'refs')
  BuiltMap<String, JsonObject?>? get refs;

  @BuiltValueField(wireName: r'toolCalls')
  BuiltMap<String, JsonObject?>? get toolCalls;

  EventsStatsStats._();

  factory EventsStatsStats([void updates(EventsStatsStatsBuilder b)]) = _$EventsStatsStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsStatsStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsStatsStats> get serializer => _$EventsStatsStatsSerializer();
}

class _$EventsStatsStatsSerializer implements PrimitiveSerializer<EventsStatsStats> {
  @override
  final Iterable<Type> types = const [EventsStatsStats, _$EventsStatsStats];

  @override
  final String wireName = r'EventsStatsStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsStatsStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.avgBytes != null) {
      yield r'avgBytes';
      yield serializers.serialize(
        object.avgBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.span != null) {
      yield r'span';
      yield serializers.serialize(
        object.span,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.perDay != null) {
      yield r'perDay';
      yield serializers.serialize(
        object.perDay,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.hosts != null) {
      yield r'hosts';
      yield serializers.serialize(
        object.hosts,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.turns != null) {
      yield r'turns';
      yield serializers.serialize(
        object.turns,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.toolCalls != null) {
      yield r'toolCalls';
      yield serializers.serialize(
        object.toolCalls,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsStatsStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsStatsStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.events = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'avgBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.avgBytes = valueDes;
          break;
        case r'span':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.span.replace(valueDes);
          break;
        case r'perDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.perDay.replace(valueDes);
          break;
        case r'hosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.hosts.replace(valueDes);
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        case r'turns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.turns.replace(valueDes);
          break;
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        case r'toolCalls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.toolCalls.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsStatsStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsStatsStatsBuilder();
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


