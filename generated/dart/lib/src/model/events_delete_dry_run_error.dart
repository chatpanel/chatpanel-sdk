//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_delete_dry_run_error.g.dart';

/// EventsDeleteDryRunError
///
/// Properties:
/// * [message] 
/// * [type] 
/// * [code] 
@BuiltValue()
abstract class EventsDeleteDryRunError implements Built<EventsDeleteDryRunError, EventsDeleteDryRunErrorBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'type')
  EventsDeleteDryRunErrorTypeEnum get type;
  // enum typeEnum {  confirm_required,  };

  @BuiltValueField(wireName: r'code')
  EventsDeleteDryRunErrorCodeEnum? get code;
  // enum codeEnum {  confirm_required,  };

  EventsDeleteDryRunError._();

  factory EventsDeleteDryRunError([void updates(EventsDeleteDryRunErrorBuilder b)]) = _$EventsDeleteDryRunError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsDeleteDryRunErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsDeleteDryRunError> get serializer => _$EventsDeleteDryRunErrorSerializer();
}

class _$EventsDeleteDryRunErrorSerializer implements PrimitiveSerializer<EventsDeleteDryRunError> {
  @override
  final Iterable<Type> types = const [EventsDeleteDryRunError, _$EventsDeleteDryRunError];

  @override
  final String wireName = r'EventsDeleteDryRunError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsDeleteDryRunError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EventsDeleteDryRunErrorTypeEnum),
    );
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(EventsDeleteDryRunErrorCodeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsDeleteDryRunError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsDeleteDryRunErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventsDeleteDryRunErrorTypeEnum),
          ) as EventsDeleteDryRunErrorTypeEnum;
          result.type = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EventsDeleteDryRunErrorCodeEnum),
          ) as EventsDeleteDryRunErrorCodeEnum?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsDeleteDryRunError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsDeleteDryRunErrorBuilder();
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


class EventsDeleteDryRunErrorTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'confirm_required')
  static const EventsDeleteDryRunErrorTypeEnum confirmRequired = _$eventsDeleteDryRunErrorTypeEnum_confirmRequired;

  static Serializer<EventsDeleteDryRunErrorTypeEnum> get serializer => _$eventsDeleteDryRunErrorTypeEnumSerializer;

  const EventsDeleteDryRunErrorTypeEnum._(String name): super(name);

  static BuiltSet<EventsDeleteDryRunErrorTypeEnum> get values => _$eventsDeleteDryRunErrorTypeEnumValues;
  static EventsDeleteDryRunErrorTypeEnum valueOf(String name) => _$eventsDeleteDryRunErrorTypeEnumValueOf(name);
}

class EventsDeleteDryRunErrorCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'confirm_required')
  static const EventsDeleteDryRunErrorCodeEnum confirmRequired = _$eventsDeleteDryRunErrorCodeEnum_confirmRequired;

  static Serializer<EventsDeleteDryRunErrorCodeEnum> get serializer => _$eventsDeleteDryRunErrorCodeEnumSerializer;

  const EventsDeleteDryRunErrorCodeEnum._(String name): super(name);

  static BuiltSet<EventsDeleteDryRunErrorCodeEnum> get values => _$eventsDeleteDryRunErrorCodeEnumValues;
  static EventsDeleteDryRunErrorCodeEnum valueOf(String name) => _$eventsDeleteDryRunErrorCodeEnumValueOf(name);
}

