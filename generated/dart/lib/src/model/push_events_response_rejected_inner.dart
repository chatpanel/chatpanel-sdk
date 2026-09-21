//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_events_response_rejected_inner.g.dart';

/// PushEventsResponseRejectedInner
///
/// Properties:
/// * [id] 
/// * [code] - `CLOUDEVENT` (envelope), `SEQ` (moved backwards), or event.js's `SHAPE` / `TYPE` / `PAYLOAD` / `VERSION`.
/// * [message] 
@BuiltValue()
abstract class PushEventsResponseRejectedInner implements Built<PushEventsResponseRejectedInner, PushEventsResponseRejectedInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// `CLOUDEVENT` (envelope), `SEQ` (moved backwards), or event.js's `SHAPE` / `TYPE` / `PAYLOAD` / `VERSION`.
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'message')
  String get message;

  PushEventsResponseRejectedInner._();

  factory PushEventsResponseRejectedInner([void updates(PushEventsResponseRejectedInnerBuilder b)]) = _$PushEventsResponseRejectedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushEventsResponseRejectedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushEventsResponseRejectedInner> get serializer => _$PushEventsResponseRejectedInnerSerializer();
}

class _$PushEventsResponseRejectedInnerSerializer implements PrimitiveSerializer<PushEventsResponseRejectedInner> {
  @override
  final Iterable<Type> types = const [PushEventsResponseRejectedInner, _$PushEventsResponseRejectedInner];

  @override
  final String wireName = r'PushEventsResponseRejectedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushEventsResponseRejectedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushEventsResponseRejectedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PushEventsResponseRejectedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushEventsResponseRejectedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushEventsResponseRejectedInnerBuilder();
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


