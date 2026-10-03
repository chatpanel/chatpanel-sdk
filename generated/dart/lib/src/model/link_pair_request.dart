//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/link_pair_request_scopes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/link_pair_request_partner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_pair_request.g.dart';

/// LinkPairRequest
///
/// Properties:
/// * [kind] - Absent is a phone.
/// * [name] - A phone pairing — what the phone calls this computer.
/// * [partner] 
/// * [scopes] 
/// * [route] - The partner's one path. Absent is the gateway's own route.
/// * [relay] - The https relay for `route relay`.
/// * [confirm] - The owner saw the preview and said yes. Without it nothing is issued.
@BuiltValue()
abstract class LinkPairRequest implements Built<LinkPairRequest, LinkPairRequestBuilder> {
  /// Absent is a phone.
  @BuiltValueField(wireName: r'kind')
  LinkPairRequestKindEnum? get kind;
  // enum kindEnum {  phone,  partner,  };

  /// A phone pairing — what the phone calls this computer.
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'partner')
  LinkPairRequestPartner? get partner;

  @BuiltValueField(wireName: r'scopes')
  LinkPairRequestScopes? get scopes;

  /// The partner's one path. Absent is the gateway's own route.
  @BuiltValueField(wireName: r'route')
  LinkPairRequestRouteEnum? get route;
  // enum routeEnum {  link,  relay,  tailscale,  cloudflare,  };

  /// The https relay for `route relay`.
  @BuiltValueField(wireName: r'relay')
  String? get relay;

  /// The owner saw the preview and said yes. Without it nothing is issued.
  @BuiltValueField(wireName: r'confirm')
  bool? get confirm;

  LinkPairRequest._();

  factory LinkPairRequest([void updates(LinkPairRequestBuilder b)]) = _$LinkPairRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPairRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPairRequest> get serializer => _$LinkPairRequestSerializer();
}

class _$LinkPairRequestSerializer implements PrimitiveSerializer<LinkPairRequest> {
  @override
  final Iterable<Type> types = const [LinkPairRequest, _$LinkPairRequest];

  @override
  final String wireName = r'LinkPairRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(LinkPairRequestKindEnum),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.partner != null) {
      yield r'partner';
      yield serializers.serialize(
        object.partner,
        specifiedType: const FullType(LinkPairRequestPartner),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(LinkPairRequestScopes),
      );
    }
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType(LinkPairRequestRouteEnum),
      );
    }
    if (object.relay != null) {
      yield r'relay';
      yield serializers.serialize(
        object.relay,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirm != null) {
      yield r'confirm';
      yield serializers.serialize(
        object.confirm,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkPairRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairRequestKindEnum),
          ) as LinkPairRequestKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'partner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairRequestPartner),
          ) as LinkPairRequestPartner?;
          if (valueDes == null) continue;
          result.partner.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairRequestScopes),
          ) as LinkPairRequestScopes?;
          if (valueDes == null) continue;
          result.scopes.replace(valueDes);
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairRequestRouteEnum),
          ) as LinkPairRequestRouteEnum?;
          if (valueDes == null) continue;
          result.route = valueDes;
          break;
        case r'relay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relay = valueDes;
          break;
        case r'confirm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.confirm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkPairRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPairRequestBuilder();
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


/// Absent is a phone.
class LinkPairRequestKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'phone')
  static const LinkPairRequestKindEnum phone = _$linkPairRequestKindEnum_phone;
  @BuiltValueEnumConst(wireName: r'partner')
  static const LinkPairRequestKindEnum partner = _$linkPairRequestKindEnum_partner;

  static Serializer<LinkPairRequestKindEnum> get serializer => _$linkPairRequestKindEnumSerializer;

  const LinkPairRequestKindEnum._(String name): super(name);

  static BuiltSet<LinkPairRequestKindEnum> get values => _$linkPairRequestKindEnumValues;
  static LinkPairRequestKindEnum valueOf(String name) => _$linkPairRequestKindEnumValueOf(name);
}

/// The partner's one path. Absent is the gateway's own route.
class LinkPairRequestRouteEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'link')
  static const LinkPairRequestRouteEnum link = _$linkPairRequestRouteEnum_link;
  @BuiltValueEnumConst(wireName: r'relay')
  static const LinkPairRequestRouteEnum relay = _$linkPairRequestRouteEnum_relay;
  @BuiltValueEnumConst(wireName: r'tailscale')
  static const LinkPairRequestRouteEnum tailscale = _$linkPairRequestRouteEnum_tailscale;
  @BuiltValueEnumConst(wireName: r'cloudflare')
  static const LinkPairRequestRouteEnum cloudflare = _$linkPairRequestRouteEnum_cloudflare;

  static Serializer<LinkPairRequestRouteEnum> get serializer => _$linkPairRequestRouteEnumSerializer;

  const LinkPairRequestRouteEnum._(String name): super(name);

  static BuiltSet<LinkPairRequestRouteEnum> get values => _$linkPairRequestRouteEnumValues;
  static LinkPairRequestRouteEnum valueOf(String name) => _$linkPairRequestRouteEnumValueOf(name);
}

