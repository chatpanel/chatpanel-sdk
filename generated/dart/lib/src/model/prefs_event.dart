//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefs_event.g.dart';

/// PrefsEvent
///
/// Properties:
/// * [type] 
/// * [revision] 
/// * [stamps] 
/// * [applied] - The sections the other client wrote.
/// * [by] 
@BuiltValue()
abstract class PrefsEvent implements Built<PrefsEvent, PrefsEventBuilder> {
  @BuiltValueField(wireName: r'type')
  PrefsEventTypeEnum get type;
  // enum typeEnum {  hello,  changed,  };

  @BuiltValueField(wireName: r'revision')
  int? get revision;

  @BuiltValueField(wireName: r'stamps')
  BuiltMap<String, int>? get stamps;

  /// The sections the other client wrote.
  @BuiltValueField(wireName: r'applied')
  BuiltList<String>? get applied;

  @BuiltValueField(wireName: r'by')
  String? get by;

  PrefsEvent._();

  factory PrefsEvent([void updates(PrefsEventBuilder b)]) = _$PrefsEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrefsEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrefsEvent> get serializer => _$PrefsEventSerializer();
}

class _$PrefsEventSerializer implements PrimitiveSerializer<PrefsEvent> {
  @override
  final Iterable<Type> types = const [PrefsEvent, _$PrefsEvent];

  @override
  final String wireName = r'PrefsEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrefsEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PrefsEventTypeEnum),
    );
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(int),
      );
    }
    if (object.stamps != null) {
      yield r'stamps';
      yield serializers.serialize(
        object.stamps,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.applied != null) {
      yield r'applied';
      yield serializers.serialize(
        object.applied,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrefsEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrefsEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrefsEventTypeEnum),
          ) as PrefsEventTypeEnum;
          result.type = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.revision = valueDes;
          break;
        case r'stamps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.stamps.replace(valueDes);
          break;
        case r'applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.applied.replace(valueDes);
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrefsEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefsEventBuilder();
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


class PrefsEventTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hello')
  static const PrefsEventTypeEnum hello = _$prefsEventTypeEnum_hello;
  @BuiltValueEnumConst(wireName: r'changed')
  static const PrefsEventTypeEnum changed = _$prefsEventTypeEnum_changed;

  static Serializer<PrefsEventTypeEnum> get serializer => _$prefsEventTypeEnumSerializer;

  const PrefsEventTypeEnum._(String name): super(name);

  static BuiltSet<PrefsEventTypeEnum> get values => _$prefsEventTypeEnumValues;
  static PrefsEventTypeEnum valueOf(String name) => _$prefsEventTypeEnumValueOf(name);
}

