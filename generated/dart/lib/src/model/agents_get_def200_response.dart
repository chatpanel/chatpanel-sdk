//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_def.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agents_get_def200_response.g.dart';

/// AgentsGetDef200Response
///
/// Properties:
/// * [agent] 
/// * [dialect] 
/// * [source_] 
/// * [path] 
@BuiltValue()
abstract class AgentsGetDef200Response implements Built<AgentsGetDef200Response, AgentsGetDef200ResponseBuilder> {
  @BuiltValueField(wireName: r'agent')
  AgentDef? get agent;

  @BuiltValueField(wireName: r'dialect')
  AgentsGetDef200ResponseDialectEnum? get dialect;
  // enum dialectEnum {  chatpanel,  claude,  codex,  a2a,  };

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'path')
  String? get path;

  AgentsGetDef200Response._();

  factory AgentsGetDef200Response([void updates(AgentsGetDef200ResponseBuilder b)]) = _$AgentsGetDef200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentsGetDef200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentsGetDef200Response> get serializer => _$AgentsGetDef200ResponseSerializer();
}

class _$AgentsGetDef200ResponseSerializer implements PrimitiveSerializer<AgentsGetDef200Response> {
  @override
  final Iterable<Type> types = const [AgentsGetDef200Response, _$AgentsGetDef200Response];

  @override
  final String wireName = r'AgentsGetDef200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentsGetDef200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.agent != null) {
      yield r'agent';
      yield serializers.serialize(
        object.agent,
        specifiedType: const FullType(AgentDef),
      );
    }
    if (object.dialect != null) {
      yield r'dialect';
      yield serializers.serialize(
        object.dialect,
        specifiedType: const FullType(AgentsGetDef200ResponseDialectEnum),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentsGetDef200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentsGetDef200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentDef),
          ) as AgentDef?;
          if (valueDes == null) continue;
          result.agent = valueDes;
          break;
        case r'dialect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentsGetDef200ResponseDialectEnum),
          ) as AgentsGetDef200ResponseDialectEnum?;
          if (valueDes == null) continue;
          result.dialect = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentsGetDef200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentsGetDef200ResponseBuilder();
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


class AgentsGetDef200ResponseDialectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'chatpanel')
  static const AgentsGetDef200ResponseDialectEnum chatpanel = _$agentsGetDef200ResponseDialectEnum_chatpanel;
  @BuiltValueEnumConst(wireName: r'claude')
  static const AgentsGetDef200ResponseDialectEnum claude = _$agentsGetDef200ResponseDialectEnum_claude;
  @BuiltValueEnumConst(wireName: r'codex')
  static const AgentsGetDef200ResponseDialectEnum codex = _$agentsGetDef200ResponseDialectEnum_codex;
  @BuiltValueEnumConst(wireName: r'a2a')
  static const AgentsGetDef200ResponseDialectEnum a2a = _$agentsGetDef200ResponseDialectEnum_a2a;

  static Serializer<AgentsGetDef200ResponseDialectEnum> get serializer => _$agentsGetDef200ResponseDialectEnumSerializer;

  const AgentsGetDef200ResponseDialectEnum._(String name): super(name);

  static BuiltSet<AgentsGetDef200ResponseDialectEnum> get values => _$agentsGetDef200ResponseDialectEnumValues;
  static AgentsGetDef200ResponseDialectEnum valueOf(String name) => _$agentsGetDef200ResponseDialectEnumValueOf(name);
}

