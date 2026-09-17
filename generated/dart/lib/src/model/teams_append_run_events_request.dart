//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/run_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_append_run_events_request.g.dart';

/// TeamsAppendRunEventsRequest
///
/// Properties:
/// * [events] 
@BuiltValue()
abstract class TeamsAppendRunEventsRequest implements Built<TeamsAppendRunEventsRequest, TeamsAppendRunEventsRequestBuilder> {
  @BuiltValueField(wireName: r'events')
  BuiltList<RunEvent> get events;

  TeamsAppendRunEventsRequest._();

  factory TeamsAppendRunEventsRequest([void updates(TeamsAppendRunEventsRequestBuilder b)]) = _$TeamsAppendRunEventsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsAppendRunEventsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsAppendRunEventsRequest> get serializer => _$TeamsAppendRunEventsRequestSerializer();
}

class _$TeamsAppendRunEventsRequestSerializer implements PrimitiveSerializer<TeamsAppendRunEventsRequest> {
  @override
  final Iterable<Type> types = const [TeamsAppendRunEventsRequest, _$TeamsAppendRunEventsRequest];

  @override
  final String wireName = r'TeamsAppendRunEventsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsAppendRunEventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(RunEvent)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsAppendRunEventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsAppendRunEventsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RunEvent)]),
          ) as BuiltList<RunEvent>;
          result.events.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsAppendRunEventsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsAppendRunEventsRequestBuilder();
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


