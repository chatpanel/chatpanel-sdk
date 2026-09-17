//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'who_am_i.g.dart';

/// WhoAmI
///
/// Properties:
/// * [ok] 
/// * [trust] 
/// * [paired] - True when this caller may reach token-gated routes.
/// * [version] 
@BuiltValue()
abstract class WhoAmI implements Built<WhoAmI, WhoAmIBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'trust')
  WhoAmITrustEnum get trust;
  // enum trustEnum {  token,  pinned,  unpaired,  local,  web,  };

  /// True when this caller may reach token-gated routes.
  @BuiltValueField(wireName: r'paired')
  bool get paired;

  @BuiltValueField(wireName: r'version')
  String get version;

  WhoAmI._();

  factory WhoAmI([void updates(WhoAmIBuilder b)]) = _$WhoAmI;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhoAmIBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhoAmI> get serializer => _$WhoAmISerializer();
}

class _$WhoAmISerializer implements PrimitiveSerializer<WhoAmI> {
  @override
  final Iterable<Type> types = const [WhoAmI, _$WhoAmI];

  @override
  final String wireName = r'WhoAmI';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhoAmI object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'trust';
    yield serializers.serialize(
      object.trust,
      specifiedType: const FullType(WhoAmITrustEnum),
    );
    yield r'paired';
    yield serializers.serialize(
      object.paired,
      specifiedType: const FullType(bool),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WhoAmI object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhoAmIBuilder result,
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
        case r'trust':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WhoAmITrustEnum),
          ) as WhoAmITrustEnum;
          result.trust = valueDes;
          break;
        case r'paired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paired = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhoAmI deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhoAmIBuilder();
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


class WhoAmITrustEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'token')
  static const WhoAmITrustEnum token = _$whoAmITrustEnum_token;
  @BuiltValueEnumConst(wireName: r'pinned')
  static const WhoAmITrustEnum pinned = _$whoAmITrustEnum_pinned;
  @BuiltValueEnumConst(wireName: r'unpaired')
  static const WhoAmITrustEnum unpaired = _$whoAmITrustEnum_unpaired;
  @BuiltValueEnumConst(wireName: r'local')
  static const WhoAmITrustEnum local = _$whoAmITrustEnum_local;
  @BuiltValueEnumConst(wireName: r'web')
  static const WhoAmITrustEnum web = _$whoAmITrustEnum_web;

  static Serializer<WhoAmITrustEnum> get serializer => _$whoAmITrustEnumSerializer;

  const WhoAmITrustEnum._(String name): super(name);

  static BuiltSet<WhoAmITrustEnum> get values => _$whoAmITrustEnumValues;
  static WhoAmITrustEnum valueOf(String name) => _$whoAmITrustEnumValueOf(name);
}

