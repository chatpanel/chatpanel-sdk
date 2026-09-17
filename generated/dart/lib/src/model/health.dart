//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health.g.dart';

/// Health
///
/// Properties:
/// * [ok] 
/// * [version] - The gateway's semver; every version gate reads this.
/// * [backend] 
/// * [tier] - Redaction tier.
/// * [pairing] - Present from 0.9.0 — this gateway can pair a client.
/// * [managed] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [managedBy] 
/// * [bridge] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [stt] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [tts] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class Health implements Built<Health, HealthBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// The gateway's semver; every version gate reads this.
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'backend')
  String? get backend;

  /// Redaction tier.
  @BuiltValueField(wireName: r'tier')
  HealthTierEnum? get tier;
  // enum tierEnum {  basic,  full,  };

  /// Present from 0.9.0 — this gateway can pair a client.
  @BuiltValueField(wireName: r'pairing')
  bool? get pairing;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'managed')
  BuiltMap<String, JsonObject?>? get managed;

  @BuiltValueField(wireName: r'managedBy')
  String? get managedBy;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'bridge')
  BuiltMap<String, JsonObject?>? get bridge;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'stt')
  BuiltMap<String, JsonObject?>? get stt;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'tts')
  BuiltMap<String, JsonObject?>? get tts;

  Health._();

  factory Health([void updates(HealthBuilder b)]) = _$Health;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Health> get serializer => _$HealthSerializer();
}

class _$HealthSerializer implements PrimitiveSerializer<Health> {
  @override
  final Iterable<Type> types = const [Health, _$Health];

  @override
  final String wireName = r'Health';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Health object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.backend != null) {
      yield r'backend';
      yield serializers.serialize(
        object.backend,
        specifiedType: const FullType(String),
      );
    }
    if (object.tier != null) {
      yield r'tier';
      yield serializers.serialize(
        object.tier,
        specifiedType: const FullType(HealthTierEnum),
      );
    }
    if (object.pairing != null) {
      yield r'pairing';
      yield serializers.serialize(
        object.pairing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.managed != null) {
      yield r'managed';
      yield serializers.serialize(
        object.managed,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.managedBy != null) {
      yield r'managedBy';
      yield serializers.serialize(
        object.managedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.bridge != null) {
      yield r'bridge';
      yield serializers.serialize(
        object.bridge,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.stt != null) {
      yield r'stt';
      yield serializers.serialize(
        object.stt,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.tts != null) {
      yield r'tts';
      yield serializers.serialize(
        object.tts,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Health object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'backend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.backend = valueDes;
          break;
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HealthTierEnum),
          ) as HealthTierEnum?;
          if (valueDes == null) continue;
          result.tier = valueDes;
          break;
        case r'pairing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pairing = valueDes;
          break;
        case r'managed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.managed.replace(valueDes);
          break;
        case r'managedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.managedBy = valueDes;
          break;
        case r'bridge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.bridge.replace(valueDes);
          break;
        case r'stt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.stt.replace(valueDes);
          break;
        case r'tts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.tts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Health deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthBuilder();
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


/// Redaction tier.
class HealthTierEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'basic')
  static const HealthTierEnum basic = _$healthTierEnum_basic;
  @BuiltValueEnumConst(wireName: r'full')
  static const HealthTierEnum full = _$healthTierEnum_full;

  static Serializer<HealthTierEnum> get serializer => _$healthTierEnumSerializer;

  const HealthTierEnum._(String name): super(name);

  static BuiltSet<HealthTierEnum> get values => _$healthTierEnumValues;
  static HealthTierEnum valueOf(String name) => _$healthTierEnumValueOf(name);
}

