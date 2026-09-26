//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_stream_event.g.dart';

/// TeamsStreamEvent
///
/// Properties:
/// * [type] 
/// * [at] - On `hello`.
/// * [id] - The run that changed.
/// * [removed] - True when the run left the store.
@BuiltValue()
abstract class TeamsStreamEvent implements Built<TeamsStreamEvent, TeamsStreamEventBuilder> {
  @BuiltValueField(wireName: r'type')
  TeamsStreamEventTypeEnum get type;
  // enum typeEnum {  hello,  run,  };

  /// On `hello`.
  @BuiltValueField(wireName: r'at')
  int? get at;

  /// The run that changed.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// True when the run left the store.
  @BuiltValueField(wireName: r'removed')
  bool? get removed;

  TeamsStreamEvent._();

  factory TeamsStreamEvent([void updates(TeamsStreamEventBuilder b)]) = _$TeamsStreamEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsStreamEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsStreamEvent> get serializer => _$TeamsStreamEventSerializer();
}

class _$TeamsStreamEventSerializer implements PrimitiveSerializer<TeamsStreamEvent> {
  @override
  final Iterable<Type> types = const [TeamsStreamEvent, _$TeamsStreamEvent];

  @override
  final String wireName = r'TeamsStreamEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TeamsStreamEventTypeEnum),
    );
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsStreamEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TeamsStreamEventTypeEnum),
          ) as TeamsStreamEventTypeEnum;
          result.type = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsStreamEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsStreamEventBuilder();
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


class TeamsStreamEventTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hello')
  static const TeamsStreamEventTypeEnum hello = _$teamsStreamEventTypeEnum_hello;
  @BuiltValueEnumConst(wireName: r'run')
  static const TeamsStreamEventTypeEnum run = _$teamsStreamEventTypeEnum_run;

  static Serializer<TeamsStreamEventTypeEnum> get serializer => _$teamsStreamEventTypeEnumSerializer;

  const TeamsStreamEventTypeEnum._(String name): super(name);

  static BuiltSet<TeamsStreamEventTypeEnum> get values => _$teamsStreamEventTypeEnumValues;
  static TeamsStreamEventTypeEnum valueOf(String name) => _$teamsStreamEventTypeEnumValueOf(name);
}

