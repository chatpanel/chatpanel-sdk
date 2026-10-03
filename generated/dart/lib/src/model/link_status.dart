//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:chatpanel/src/model/link_device.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_status.g.dart';

/// LinkStatus
///
/// Properties:
/// * [enabled] 
/// * [route] 
/// * [relay] 
/// * [tunnel] 
/// * [problem] 
/// * [routes] 
/// * [setup] 
/// * [devices] 
/// * [pairing] - A phone code waiting to be scanned.
/// * [partnerPairing] - A partner code waiting to be used.
/// * [agentSessions] 
@BuiltValue()
abstract class LinkStatus implements Built<LinkStatus, LinkStatusBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'route')
  String? get route;

  @BuiltValueField(wireName: r'relay')
  String? get relay;

  @BuiltValueField(wireName: r'tunnel')
  String? get tunnel;

  @BuiltValueField(wireName: r'problem')
  String? get problem;

  @BuiltValueField(wireName: r'routes')
  BuiltList<BuiltMap<String, JsonObject?>>? get routes;

  @BuiltValueField(wireName: r'setup')
  BuiltMap<String, JsonObject?>? get setup;

  @BuiltValueField(wireName: r'devices')
  BuiltList<LinkDevice> get devices;

  /// A phone code waiting to be scanned.
  @BuiltValueField(wireName: r'pairing')
  BuiltMap<String, JsonObject?>? get pairing;

  /// A partner code waiting to be used.
  @BuiltValueField(wireName: r'partnerPairing')
  BuiltMap<String, JsonObject?>? get partnerPairing;

  @BuiltValueField(wireName: r'agentSessions')
  bool? get agentSessions;

  LinkStatus._();

  factory LinkStatus([void updates(LinkStatusBuilder b)]) = _$LinkStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkStatus> get serializer => _$LinkStatusSerializer();
}

class _$LinkStatusSerializer implements PrimitiveSerializer<LinkStatus> {
  @override
  final Iterable<Type> types = const [LinkStatus, _$LinkStatus];

  @override
  final String wireName = r'LinkStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType(String),
      );
    }
    if (object.relay != null) {
      yield r'relay';
      yield serializers.serialize(
        object.relay,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tunnel != null) {
      yield r'tunnel';
      yield serializers.serialize(
        object.tunnel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.problem != null) {
      yield r'problem';
      yield serializers.serialize(
        object.problem,
        specifiedType: const FullType(String),
      );
    }
    if (object.routes != null) {
      yield r'routes';
      yield serializers.serialize(
        object.routes,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.setup != null) {
      yield r'setup';
      yield serializers.serialize(
        object.setup,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'devices';
    yield serializers.serialize(
      object.devices,
      specifiedType: const FullType(BuiltList, [FullType(LinkDevice)]),
    );
    if (object.pairing != null) {
      yield r'pairing';
      yield serializers.serialize(
        object.pairing,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.partnerPairing != null) {
      yield r'partnerPairing';
      yield serializers.serialize(
        object.partnerPairing,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.agentSessions != null) {
      yield r'agentSessions';
      yield serializers.serialize(
        object.agentSessions,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
        case r'tunnel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tunnel = valueDes;
          break;
        case r'problem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.problem = valueDes;
          break;
        case r'routes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.routes.replace(valueDes);
          break;
        case r'setup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.setup.replace(valueDes);
          break;
        case r'devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LinkDevice)]),
          ) as BuiltList<LinkDevice>;
          result.devices.replace(valueDes);
          break;
        case r'pairing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.pairing.replace(valueDes);
          break;
        case r'partnerPairing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.partnerPairing.replace(valueDes);
          break;
        case r'agentSessions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.agentSessions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkStatusBuilder();
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


