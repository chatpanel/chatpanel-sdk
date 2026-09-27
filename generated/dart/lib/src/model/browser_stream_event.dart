//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_stream_event.g.dart';

/// BrowserStreamEvent
///
/// Properties:
/// * [event] 
/// * [session] - On `hello`.
/// * [version] - On `hello` — the gateway's.
/// * [id] - On `call` and `cancel`.
/// * [action] 
/// * [args] 
/// * [task] 
@BuiltValue()
abstract class BrowserStreamEvent implements Built<BrowserStreamEvent, BrowserStreamEventBuilder> {
  @BuiltValueField(wireName: r'event')
  BrowserStreamEventEventEnum get event;
  // enum eventEnum {  hello,  call,  cancel,  replaced,  };

  /// On `hello`.
  @BuiltValueField(wireName: r'session')
  String? get session;

  /// On `hello` — the gateway's.
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// On `call` and `cancel`.
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'args')
  BuiltMap<String, JsonObject?>? get args;

  @BuiltValueField(wireName: r'task')
  String? get task;

  BrowserStreamEvent._();

  factory BrowserStreamEvent([void updates(BrowserStreamEventBuilder b)]) = _$BrowserStreamEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserStreamEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserStreamEvent> get serializer => _$BrowserStreamEventSerializer();
}

class _$BrowserStreamEventSerializer implements PrimitiveSerializer<BrowserStreamEvent> {
  @override
  final Iterable<Type> types = const [BrowserStreamEvent, _$BrowserStreamEvent];

  @override
  final String wireName = r'BrowserStreamEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(BrowserStreamEventEventEnum),
    );
    if (object.session != null) {
      yield r'session';
      yield serializers.serialize(
        object.session,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.args != null) {
      yield r'args';
      yield serializers.serialize(
        object.args,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.task != null) {
      yield r'task';
      yield serializers.serialize(
        object.task,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserStreamEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BrowserStreamEventEventEnum),
          ) as BrowserStreamEventEventEnum;
          result.event = valueDes;
          break;
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.session = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'args':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.args.replace(valueDes);
          break;
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.task = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserStreamEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserStreamEventBuilder();
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


class BrowserStreamEventEventEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hello')
  static const BrowserStreamEventEventEnum hello = _$browserStreamEventEventEnum_hello;
  @BuiltValueEnumConst(wireName: r'call')
  static const BrowserStreamEventEventEnum call = _$browserStreamEventEventEnum_call;
  @BuiltValueEnumConst(wireName: r'cancel')
  static const BrowserStreamEventEventEnum cancel = _$browserStreamEventEventEnum_cancel;
  @BuiltValueEnumConst(wireName: r'replaced')
  static const BrowserStreamEventEventEnum replaced = _$browserStreamEventEventEnum_replaced;

  static Serializer<BrowserStreamEventEventEnum> get serializer => _$browserStreamEventEventEnumSerializer;

  const BrowserStreamEventEventEnum._(String name): super(name);

  static BuiltSet<BrowserStreamEventEventEnum> get values => _$browserStreamEventEventEnumValues;
  static BrowserStreamEventEventEnum valueOf(String name) => _$browserStreamEventEventEnumValueOf(name);
}

