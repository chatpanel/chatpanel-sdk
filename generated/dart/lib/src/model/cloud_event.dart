//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cloud_event.g.dart';

/// One durable event in the CloudEvents 1.0 envelope. `seq`, `host`, `chatpanelv` are ChatPanel's extension attributes (the per-host order, the producer, the log schema version); `causes` is the comma-joined ids this event follows; `data` is the payload — refs and counts, never content.
///
/// Properties:
/// * [specversion] 
/// * [id] 
/// * [source_] - `urn:chatpanel:host:<host>`
/// * [type] - `net.chatpanel.<family>.<kind>`
/// * [time] 
/// * [datacontenttype] 
/// * [seq] 
/// * [host] 
/// * [causes] 
/// * [chatpanelv] 
/// * [data] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class CloudEvent implements Built<CloudEvent, CloudEventBuilder> {
  @BuiltValueField(wireName: r'specversion')
  CloudEventSpecversionEnum get specversion;
  // enum specversionEnum {  1.0,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  /// `urn:chatpanel:host:<host>`
  @BuiltValueField(wireName: r'source')
  String get source_;

  /// `net.chatpanel.<family>.<kind>`
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'datacontenttype')
  String? get datacontenttype;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'host')
  String get host;

  @BuiltValueField(wireName: r'causes')
  String? get causes;

  @BuiltValueField(wireName: r'chatpanelv')
  int get chatpanelv;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?>? get data;

  CloudEvent._();

  factory CloudEvent([void updates(CloudEventBuilder b)]) = _$CloudEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CloudEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CloudEvent> get serializer => _$CloudEventSerializer();
}

class _$CloudEventSerializer implements PrimitiveSerializer<CloudEvent> {
  @override
  final Iterable<Type> types = const [CloudEvent, _$CloudEvent];

  @override
  final String wireName = r'CloudEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CloudEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'specversion';
    yield serializers.serialize(
      object.specversion,
      specifiedType: const FullType(CloudEventSpecversionEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.datacontenttype != null) {
      yield r'datacontenttype';
      yield serializers.serialize(
        object.datacontenttype,
        specifiedType: const FullType(String),
      );
    }
    yield r'seq';
    yield serializers.serialize(
      object.seq,
      specifiedType: const FullType(int),
    );
    yield r'host';
    yield serializers.serialize(
      object.host,
      specifiedType: const FullType(String),
    );
    if (object.causes != null) {
      yield r'causes';
      yield serializers.serialize(
        object.causes,
        specifiedType: const FullType(String),
      );
    }
    yield r'chatpanelv';
    yield serializers.serialize(
      object.chatpanelv,
      specifiedType: const FullType(int),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CloudEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CloudEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'specversion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CloudEventSpecversionEnum),
          ) as CloudEventSpecversionEnum;
          result.specversion = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'datacontenttype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.datacontenttype = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'causes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.causes = valueDes;
          break;
        case r'chatpanelv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chatpanelv = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CloudEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CloudEventBuilder();
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


class CloudEventSpecversionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'1.0')
  static const CloudEventSpecversionEnum n1period0 = _$cloudEventSpecversionEnum_n1period0;

  static Serializer<CloudEventSpecversionEnum> get serializer => _$cloudEventSpecversionEnumSerializer;

  const CloudEventSpecversionEnum._(String name): super(name);

  static BuiltSet<CloudEventSpecversionEnum> get values => _$cloudEventSpecversionEnumValues;
  static CloudEventSpecversionEnum valueOf(String name) => _$cloudEventSpecversionEnumValueOf(name);
}

