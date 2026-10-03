//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/link_pair_result_partner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_device.g.dart';

/// LinkDevice
///
/// Properties:
/// * [id] 
/// * [kind] 
/// * [name] 
/// * [pairedAt] 
/// * [lastSeen] 
/// * [online] 
/// * [via] - tunnel or relay, while online.
/// * [partner] 
/// * [scopes] 
/// * [route] - A partner's route
/// * [host] 
/// * [routeClosed] - A tunnel partner whose door shut when the gateway's route moved — pair it again to move it.
/// * [folder] - Where a partner's agents work (0.90.0+, with agents).
/// * [staleRelay] 
/// * [tunnelNeedsRelink] 
@BuiltValue()
abstract class LinkDevice implements Built<LinkDevice, LinkDeviceBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  LinkDeviceKindEnum? get kind;
  // enum kindEnum {  phone,  partner,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'pairedAt')
  int? get pairedAt;

  @BuiltValueField(wireName: r'lastSeen')
  int? get lastSeen;

  @BuiltValueField(wireName: r'online')
  bool? get online;

  /// tunnel or relay, while online.
  @BuiltValueField(wireName: r'via')
  String? get via;

  @BuiltValueField(wireName: r'partner')
  LinkPairResultPartner? get partner;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  /// A partner's route
  @BuiltValueField(wireName: r'route')
  String? get route;

  @BuiltValueField(wireName: r'host')
  String? get host;

  /// A tunnel partner whose door shut when the gateway's route moved — pair it again to move it.
  @BuiltValueField(wireName: r'routeClosed')
  bool? get routeClosed;

  /// Where a partner's agents work (0.90.0+, with agents).
  @BuiltValueField(wireName: r'folder')
  String? get folder;

  @BuiltValueField(wireName: r'staleRelay')
  String? get staleRelay;

  @BuiltValueField(wireName: r'tunnelNeedsRelink')
  bool? get tunnelNeedsRelink;

  LinkDevice._();

  factory LinkDevice([void updates(LinkDeviceBuilder b)]) = _$LinkDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkDevice> get serializer => _$LinkDeviceSerializer();
}

class _$LinkDeviceSerializer implements PrimitiveSerializer<LinkDevice> {
  @override
  final Iterable<Type> types = const [LinkDevice, _$LinkDevice];

  @override
  final String wireName = r'LinkDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(LinkDeviceKindEnum),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.pairedAt != null) {
      yield r'pairedAt';
      yield serializers.serialize(
        object.pairedAt,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastSeen != null) {
      yield r'lastSeen';
      yield serializers.serialize(
        object.lastSeen,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.online != null) {
      yield r'online';
      yield serializers.serialize(
        object.online,
        specifiedType: const FullType(bool),
      );
    }
    if (object.via != null) {
      yield r'via';
      yield serializers.serialize(
        object.via,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.partner != null) {
      yield r'partner';
      yield serializers.serialize(
        object.partner,
        specifiedType: const FullType(LinkPairResultPartner),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.routeClosed != null) {
      yield r'routeClosed';
      yield serializers.serialize(
        object.routeClosed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(String),
      );
    }
    if (object.staleRelay != null) {
      yield r'staleRelay';
      yield serializers.serialize(
        object.staleRelay,
        specifiedType: const FullType(String),
      );
    }
    if (object.tunnelNeedsRelink != null) {
      yield r'tunnelNeedsRelink';
      yield serializers.serialize(
        object.tunnelNeedsRelink,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkDeviceKindEnum),
          ) as LinkDeviceKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'pairedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pairedAt = valueDes;
          break;
        case r'lastSeen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastSeen = valueDes;
          break;
        case r'online':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.online = valueDes;
          break;
        case r'via':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.via = valueDes;
          break;
        case r'partner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairResultPartner),
          ) as LinkPairResultPartner?;
          if (valueDes == null) continue;
          result.partner.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.scopes.replace(valueDes);
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.route = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'routeClosed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.routeClosed = valueDes;
          break;
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folder = valueDes;
          break;
        case r'staleRelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staleRelay = valueDes;
          break;
        case r'tunnelNeedsRelink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.tunnelNeedsRelink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkDeviceBuilder();
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


class LinkDeviceKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'phone')
  static const LinkDeviceKindEnum phone = _$linkDeviceKindEnum_phone;
  @BuiltValueEnumConst(wireName: r'partner')
  static const LinkDeviceKindEnum partner = _$linkDeviceKindEnum_partner;

  static Serializer<LinkDeviceKindEnum> get serializer => _$linkDeviceKindEnumSerializer;

  const LinkDeviceKindEnum._(String name): super(name);

  static BuiltSet<LinkDeviceKindEnum> get values => _$linkDeviceKindEnumValues;
  static LinkDeviceKindEnum valueOf(String name) => _$linkDeviceKindEnumValueOf(name);
}

