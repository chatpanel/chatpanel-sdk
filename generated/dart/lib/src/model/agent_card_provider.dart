//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_card_provider.g.dart';

/// AgentCardProvider
///
/// Properties:
/// * [organization] 
/// * [url] 
@BuiltValue()
abstract class AgentCardProvider implements Built<AgentCardProvider, AgentCardProviderBuilder> {
  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'url')
  String? get url;

  AgentCardProvider._();

  factory AgentCardProvider([void updates(AgentCardProviderBuilder b)]) = _$AgentCardProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentCardProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentCardProvider> get serializer => _$AgentCardProviderSerializer();
}

class _$AgentCardProviderSerializer implements PrimitiveSerializer<AgentCardProvider> {
  @override
  final Iterable<Type> types = const [AgentCardProvider, _$AgentCardProvider];

  @override
  final String wireName = r'AgentCardProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentCardProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentCardProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentCardProviderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.organization = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentCardProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentCardProviderBuilder();
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


