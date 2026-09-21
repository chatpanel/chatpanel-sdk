//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/push_events_response_rejected_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_events_response.g.dart';

/// PushEventsResponse
///
/// Properties:
/// * [ok] 
/// * [appended] 
/// * [duplicates] - Events already held — a retry's share.
/// * [rejected] 
/// * [cursor] - `{ host: seq }` — the highest seq held per host.
@BuiltValue()
abstract class PushEventsResponse implements Built<PushEventsResponse, PushEventsResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'appended')
  int get appended;

  /// Events already held — a retry's share.
  @BuiltValueField(wireName: r'duplicates')
  int get duplicates;

  @BuiltValueField(wireName: r'rejected')
  BuiltList<PushEventsResponseRejectedInner> get rejected;

  /// `{ host: seq }` — the highest seq held per host.
  @BuiltValueField(wireName: r'cursor')
  BuiltMap<String, int> get cursor;

  PushEventsResponse._();

  factory PushEventsResponse([void updates(PushEventsResponseBuilder b)]) = _$PushEventsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushEventsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushEventsResponse> get serializer => _$PushEventsResponseSerializer();
}

class _$PushEventsResponseSerializer implements PrimitiveSerializer<PushEventsResponse> {
  @override
  final Iterable<Type> types = const [PushEventsResponse, _$PushEventsResponse];

  @override
  final String wireName = r'PushEventsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushEventsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'appended';
    yield serializers.serialize(
      object.appended,
      specifiedType: const FullType(int),
    );
    yield r'duplicates';
    yield serializers.serialize(
      object.duplicates,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(BuiltList, [FullType(PushEventsResponseRejectedInner)]),
    );
    yield r'cursor';
    yield serializers.serialize(
      object.cursor,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushEventsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PushEventsResponseBuilder result,
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
        case r'appended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.appended = valueDes;
          break;
        case r'duplicates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duplicates = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PushEventsResponseRejectedInner)]),
          ) as BuiltList<PushEventsResponseRejectedInner>;
          result.rejected.replace(valueDes);
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
  PushEventsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushEventsResponseBuilder();
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


