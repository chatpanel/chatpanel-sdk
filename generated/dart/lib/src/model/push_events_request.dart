//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/cloud_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_events_request.g.dart';

/// PushEventsRequest
///
/// Properties:
/// * [events] 
@BuiltValue()
abstract class PushEventsRequest implements Built<PushEventsRequest, PushEventsRequestBuilder> {
  @BuiltValueField(wireName: r'events')
  BuiltList<CloudEvent> get events;

  PushEventsRequest._();

  factory PushEventsRequest([void updates(PushEventsRequestBuilder b)]) = _$PushEventsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushEventsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushEventsRequest> get serializer => _$PushEventsRequestSerializer();
}

class _$PushEventsRequestSerializer implements PrimitiveSerializer<PushEventsRequest> {
  @override
  final Iterable<Type> types = const [PushEventsRequest, _$PushEventsRequest];

  @override
  final String wireName = r'PushEventsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushEventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(CloudEvent)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushEventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PushEventsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CloudEvent)]),
          ) as BuiltList<CloudEvent>;
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
  PushEventsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushEventsRequestBuilder();
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


