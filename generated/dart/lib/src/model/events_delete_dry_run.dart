//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/events_delete_dry_run_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'events_delete_dry_run.g.dart';

/// EventsDeleteDryRun
///
/// Properties:
/// * [ok] 
/// * [wouldDelete] - What `force=1` would delete.
/// * [host] 
/// * [all] 
/// * [error] 
@BuiltValue()
abstract class EventsDeleteDryRun implements Built<EventsDeleteDryRun, EventsDeleteDryRunBuilder> {
  @BuiltValueField(wireName: r'ok')
  EventsDeleteDryRunOkEnum get ok;
  // enum okEnum {  false,  };

  /// What `force=1` would delete.
  @BuiltValueField(wireName: r'wouldDelete')
  int get wouldDelete;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'all')
  bool? get all;

  @BuiltValueField(wireName: r'error')
  EventsDeleteDryRunError get error;

  EventsDeleteDryRun._();

  factory EventsDeleteDryRun([void updates(EventsDeleteDryRunBuilder b)]) = _$EventsDeleteDryRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventsDeleteDryRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventsDeleteDryRun> get serializer => _$EventsDeleteDryRunSerializer();
}

class _$EventsDeleteDryRunSerializer implements PrimitiveSerializer<EventsDeleteDryRun> {
  @override
  final Iterable<Type> types = const [EventsDeleteDryRun, _$EventsDeleteDryRun];

  @override
  final String wireName = r'EventsDeleteDryRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventsDeleteDryRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(EventsDeleteDryRunOkEnum),
    );
    yield r'wouldDelete';
    yield serializers.serialize(
      object.wouldDelete,
      specifiedType: const FullType(int),
    );
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.all != null) {
      yield r'all';
      yield serializers.serialize(
        object.all,
        specifiedType: const FullType(bool),
      );
    }
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(EventsDeleteDryRunError),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsDeleteDryRun object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventsDeleteDryRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventsDeleteDryRunOkEnum),
          ) as EventsDeleteDryRunOkEnum;
          result.ok = valueDes;
          break;
        case r'wouldDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.wouldDelete = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.all = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventsDeleteDryRunError),
          ) as EventsDeleteDryRunError;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventsDeleteDryRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsDeleteDryRunBuilder();
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


class EventsDeleteDryRunOkEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'false')
  static const EventsDeleteDryRunOkEnum false_ = _$eventsDeleteDryRunOkEnum_false_;

  static Serializer<EventsDeleteDryRunOkEnum> get serializer => _$eventsDeleteDryRunOkEnumSerializer;

  const EventsDeleteDryRunOkEnum._(String name): super(name);

  static BuiltSet<EventsDeleteDryRunOkEnum> get values => _$eventsDeleteDryRunOkEnumValues;
  static EventsDeleteDryRunOkEnum valueOf(String name) => _$eventsDeleteDryRunOkEnumValueOf(name);
}

