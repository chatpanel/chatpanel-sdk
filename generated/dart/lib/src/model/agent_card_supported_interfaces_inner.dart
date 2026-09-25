//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_card_supported_interfaces_inner.g.dart';

/// AgentCardSupportedInterfacesInner
///
/// Properties:
/// * [url] 
/// * [protocolBinding] - JSONRPC, GRPC, HTTP+JSON — an open string, so an unknown binding is carried.
/// * [protocolVersion] 
/// * [tenant] - Echoed on every request to this interface when set.
@BuiltValue()
abstract class AgentCardSupportedInterfacesInner implements Built<AgentCardSupportedInterfacesInner, AgentCardSupportedInterfacesInnerBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// JSONRPC, GRPC, HTTP+JSON — an open string, so an unknown binding is carried.
  @BuiltValueField(wireName: r'protocolBinding')
  String? get protocolBinding;

  @BuiltValueField(wireName: r'protocolVersion')
  String? get protocolVersion;

  /// Echoed on every request to this interface when set.
  @BuiltValueField(wireName: r'tenant')
  String? get tenant;

  AgentCardSupportedInterfacesInner._();

  factory AgentCardSupportedInterfacesInner([void updates(AgentCardSupportedInterfacesInnerBuilder b)]) = _$AgentCardSupportedInterfacesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentCardSupportedInterfacesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentCardSupportedInterfacesInner> get serializer => _$AgentCardSupportedInterfacesInnerSerializer();
}

class _$AgentCardSupportedInterfacesInnerSerializer implements PrimitiveSerializer<AgentCardSupportedInterfacesInner> {
  @override
  final Iterable<Type> types = const [AgentCardSupportedInterfacesInner, _$AgentCardSupportedInterfacesInner];

  @override
  final String wireName = r'AgentCardSupportedInterfacesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentCardSupportedInterfacesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocolBinding != null) {
      yield r'protocolBinding';
      yield serializers.serialize(
        object.protocolBinding,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocolVersion != null) {
      yield r'protocolVersion';
      yield serializers.serialize(
        object.protocolVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.tenant != null) {
      yield r'tenant';
      yield serializers.serialize(
        object.tenant,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentCardSupportedInterfacesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentCardSupportedInterfacesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'protocolBinding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.protocolBinding = valueDes;
          break;
        case r'protocolVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.protocolVersion = valueDes;
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenant = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentCardSupportedInterfacesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentCardSupportedInterfacesInnerBuilder();
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


