//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_card_supported_interfaces_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/agent_card_capabilities.dart';
import 'package:chatpanel/src/model/agent_card_provider.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_card.g.dart';

/// An A2A Agent Card (protocol 1.0). Unknown fields are preserved, so a card from a later spec round-trips.
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [version] 
/// * [supportedInterfaces] 
/// * [provider] 
/// * [capabilities] 
/// * [defaultInputModes] 
/// * [defaultOutputModes] 
/// * [skills] 
/// * [iconUrl] 
/// * [documentationUrl] 
@BuiltValue()
abstract class AgentCard implements Built<AgentCard, AgentCardBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'supportedInterfaces')
  BuiltList<AgentCardSupportedInterfacesInner>? get supportedInterfaces;

  @BuiltValueField(wireName: r'provider')
  AgentCardProvider? get provider;

  @BuiltValueField(wireName: r'capabilities')
  AgentCardCapabilities? get capabilities;

  @BuiltValueField(wireName: r'defaultInputModes')
  BuiltList<String>? get defaultInputModes;

  @BuiltValueField(wireName: r'defaultOutputModes')
  BuiltList<String>? get defaultOutputModes;

  @BuiltValueField(wireName: r'skills')
  BuiltList<BuiltMap<String, JsonObject?>>? get skills;

  @BuiltValueField(wireName: r'iconUrl')
  String? get iconUrl;

  @BuiltValueField(wireName: r'documentationUrl')
  String? get documentationUrl;

  AgentCard._();

  factory AgentCard([void updates(AgentCardBuilder b)]) = _$AgentCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentCard> get serializer => _$AgentCardSerializer();
}

class _$AgentCardSerializer implements PrimitiveSerializer<AgentCard> {
  @override
  final Iterable<Type> types = const [AgentCard, _$AgentCard];

  @override
  final String wireName = r'AgentCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.supportedInterfaces != null) {
      yield r'supportedInterfaces';
      yield serializers.serialize(
        object.supportedInterfaces,
        specifiedType: const FullType(BuiltList, [FullType(AgentCardSupportedInterfacesInner)]),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(AgentCardProvider),
      );
    }
    if (object.capabilities != null) {
      yield r'capabilities';
      yield serializers.serialize(
        object.capabilities,
        specifiedType: const FullType(AgentCardCapabilities),
      );
    }
    if (object.defaultInputModes != null) {
      yield r'defaultInputModes';
      yield serializers.serialize(
        object.defaultInputModes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.defaultOutputModes != null) {
      yield r'defaultOutputModes';
      yield serializers.serialize(
        object.defaultOutputModes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.skills != null) {
      yield r'skills';
      yield serializers.serialize(
        object.skills,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.iconUrl != null) {
      yield r'iconUrl';
      yield serializers.serialize(
        object.iconUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.documentationUrl != null) {
      yield r'documentationUrl';
      yield serializers.serialize(
        object.documentationUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'supportedInterfaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AgentCardSupportedInterfacesInner)]),
          ) as BuiltList<AgentCardSupportedInterfacesInner>?;
          if (valueDes == null) continue;
          result.supportedInterfaces.replace(valueDes);
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentCardProvider),
          ) as AgentCardProvider?;
          if (valueDes == null) continue;
          result.provider.replace(valueDes);
          break;
        case r'capabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentCardCapabilities),
          ) as AgentCardCapabilities?;
          if (valueDes == null) continue;
          result.capabilities = valueDes;
          break;
        case r'defaultInputModes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.defaultInputModes.replace(valueDes);
          break;
        case r'defaultOutputModes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.defaultOutputModes.replace(valueDes);
          break;
        case r'skills':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.skills.replace(valueDes);
          break;
        case r'iconUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iconUrl = valueDes;
          break;
        case r'documentationUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentationUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentCardBuilder();
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


