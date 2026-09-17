//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_stream_event.g.dart';

/// HistoryStreamEvent
///
/// Properties:
/// * [event] - The SSE event name.
/// * [newest] 
/// * [size] 
/// * [version] 
/// * [ids] 
/// * [at] 
@BuiltValue()
abstract class HistoryStreamEvent implements Built<HistoryStreamEvent, HistoryStreamEventBuilder> {
  /// The SSE event name.
  @BuiltValueField(wireName: r'event')
  HistoryStreamEventEventEnum get event;
  // enum eventEnum {  hello,  records,  };

  @BuiltValueField(wireName: r'newest')
  int? get newest;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'ids')
  BuiltList<String>? get ids;

  @BuiltValueField(wireName: r'at')
  int? get at;

  HistoryStreamEvent._();

  factory HistoryStreamEvent([void updates(HistoryStreamEventBuilder b)]) = _$HistoryStreamEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryStreamEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryStreamEvent> get serializer => _$HistoryStreamEventSerializer();
}

class _$HistoryStreamEventSerializer implements PrimitiveSerializer<HistoryStreamEvent> {
  @override
  final Iterable<Type> types = const [HistoryStreamEvent, _$HistoryStreamEvent];

  @override
  final String wireName = r'HistoryStreamEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(HistoryStreamEventEventEnum),
    );
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType(int),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryStreamEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HistoryStreamEventEventEnum),
          ) as HistoryStreamEventEventEnum;
          result.event = valueDes;
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ids.replace(valueDes);
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryStreamEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryStreamEventBuilder();
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


/// The SSE event name.
class HistoryStreamEventEventEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hello')
  static const HistoryStreamEventEventEnum hello = _$historyStreamEventEventEnum_hello;
  @BuiltValueEnumConst(wireName: r'records')
  static const HistoryStreamEventEventEnum records = _$historyStreamEventEventEnum_records;

  static Serializer<HistoryStreamEventEventEnum> get serializer => _$historyStreamEventEventEnumSerializer;

  const HistoryStreamEventEventEnum._(String name): super(name);

  static BuiltSet<HistoryStreamEventEventEnum> get values => _$historyStreamEventEventEnumValues;
  static HistoryStreamEventEventEnum valueOf(String name) => _$historyStreamEventEventEnumValueOf(name);
}

