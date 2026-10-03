//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_route_request.g.dart';

/// LinkRouteRequest
///
/// Properties:
/// * [route] 
/// * [url] - The relay (relay) or this computer's tunnel address (tailscale
/// * [fallback] - A tunnel route keeps ChatPanel Link as the phones' fallback unless false.
@BuiltValue()
abstract class LinkRouteRequest implements Built<LinkRouteRequest, LinkRouteRequestBuilder> {
  @BuiltValueField(wireName: r'route')
  LinkRouteRequestRouteEnum get route;
  // enum routeEnum {  link,  relay,  tailscale,  cloudflare,  };

  /// The relay (relay) or this computer's tunnel address (tailscale
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// A tunnel route keeps ChatPanel Link as the phones' fallback unless false.
  @BuiltValueField(wireName: r'fallback')
  bool? get fallback;

  LinkRouteRequest._();

  factory LinkRouteRequest([void updates(LinkRouteRequestBuilder b)]) = _$LinkRouteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkRouteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkRouteRequest> get serializer => _$LinkRouteRequestSerializer();
}

class _$LinkRouteRequestSerializer implements PrimitiveSerializer<LinkRouteRequest> {
  @override
  final Iterable<Type> types = const [LinkRouteRequest, _$LinkRouteRequest];

  @override
  final String wireName = r'LinkRouteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'route';
    yield serializers.serialize(
      object.route,
      specifiedType: const FullType(LinkRouteRequestRouteEnum),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.fallback != null) {
      yield r'fallback';
      yield serializers.serialize(
        object.fallback,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkRouteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LinkRouteRequestRouteEnum),
          ) as LinkRouteRequestRouteEnum;
          result.route = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'fallback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fallback = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkRouteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkRouteRequestBuilder();
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


class LinkRouteRequestRouteEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'link')
  static const LinkRouteRequestRouteEnum link = _$linkRouteRequestRouteEnum_link;
  @BuiltValueEnumConst(wireName: r'relay')
  static const LinkRouteRequestRouteEnum relay = _$linkRouteRequestRouteEnum_relay;
  @BuiltValueEnumConst(wireName: r'tailscale')
  static const LinkRouteRequestRouteEnum tailscale = _$linkRouteRequestRouteEnum_tailscale;
  @BuiltValueEnumConst(wireName: r'cloudflare')
  static const LinkRouteRequestRouteEnum cloudflare = _$linkRouteRequestRouteEnum_cloudflare;

  static Serializer<LinkRouteRequestRouteEnum> get serializer => _$linkRouteRequestRouteEnumSerializer;

  const LinkRouteRequestRouteEnum._(String name): super(name);

  static BuiltSet<LinkRouteRequestRouteEnum> get values => _$linkRouteRequestRouteEnumValues;
  static LinkRouteRequestRouteEnum valueOf(String name) => _$linkRouteRequestRouteEnumValueOf(name);
}

