//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_card_capabilities.g.dart';

/// AgentCardCapabilities
///
/// Properties:
/// * [streaming] 
/// * [pushNotifications] 
/// * [extendedAgentCard] 
@BuiltValue()
abstract class AgentCardCapabilities implements Built<AgentCardCapabilities, AgentCardCapabilitiesBuilder> {
  @BuiltValueField(wireName: r'streaming')
  bool? get streaming;

  @BuiltValueField(wireName: r'pushNotifications')
  bool? get pushNotifications;

  @BuiltValueField(wireName: r'extendedAgentCard')
  bool? get extendedAgentCard;

  AgentCardCapabilities._();

  factory AgentCardCapabilities([void updates(AgentCardCapabilitiesBuilder b)]) = _$AgentCardCapabilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentCardCapabilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentCardCapabilities> get serializer => _$AgentCardCapabilitiesSerializer();
}

class _$AgentCardCapabilitiesSerializer implements PrimitiveSerializer<AgentCardCapabilities> {
  @override
  final Iterable<Type> types = const [AgentCardCapabilities, _$AgentCardCapabilities];

  @override
  final String wireName = r'AgentCardCapabilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentCardCapabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.streaming != null) {
      yield r'streaming';
      yield serializers.serialize(
        object.streaming,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pushNotifications != null) {
      yield r'pushNotifications';
      yield serializers.serialize(
        object.pushNotifications,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extendedAgentCard != null) {
      yield r'extendedAgentCard';
      yield serializers.serialize(
        object.extendedAgentCard,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentCardCapabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentCardCapabilitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.streaming = valueDes;
          break;
        case r'pushNotifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pushNotifications = valueDes;
          break;
        case r'extendedAgentCard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.extendedAgentCard = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentCardCapabilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentCardCapabilitiesBuilder();
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


