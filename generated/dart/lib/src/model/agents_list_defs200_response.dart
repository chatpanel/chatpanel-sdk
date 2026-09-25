//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_def.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agents_list_defs200_response.g.dart';

/// AgentsListDefs200Response
///
/// Properties:
/// * [agents] 
/// * [quarantined] - Definitions the scanner refused.
/// * [problems] - Files that parsed as a definition and could not be made one.
@BuiltValue()
abstract class AgentsListDefs200Response implements Built<AgentsListDefs200Response, AgentsListDefs200ResponseBuilder> {
  @BuiltValueField(wireName: r'agents')
  BuiltList<AgentDef> get agents;

  /// Definitions the scanner refused.
  @BuiltValueField(wireName: r'quarantined')
  BuiltList<BuiltMap<String, JsonObject?>>? get quarantined;

  /// Files that parsed as a definition and could not be made one.
  @BuiltValueField(wireName: r'problems')
  BuiltList<BuiltMap<String, JsonObject?>>? get problems;

  AgentsListDefs200Response._();

  factory AgentsListDefs200Response([void updates(AgentsListDefs200ResponseBuilder b)]) = _$AgentsListDefs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentsListDefs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentsListDefs200Response> get serializer => _$AgentsListDefs200ResponseSerializer();
}

class _$AgentsListDefs200ResponseSerializer implements PrimitiveSerializer<AgentsListDefs200Response> {
  @override
  final Iterable<Type> types = const [AgentsListDefs200Response, _$AgentsListDefs200Response];

  @override
  final String wireName = r'AgentsListDefs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentsListDefs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agents';
    yield serializers.serialize(
      object.agents,
      specifiedType: const FullType(BuiltList, [FullType(AgentDef)]),
    );
    if (object.quarantined != null) {
      yield r'quarantined';
      yield serializers.serialize(
        object.quarantined,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.problems != null) {
      yield r'problems';
      yield serializers.serialize(
        object.problems,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentsListDefs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentsListDefs200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AgentDef)]),
          ) as BuiltList<AgentDef>;
          result.agents.replace(valueDes);
          break;
        case r'quarantined':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.quarantined.replace(valueDes);
          break;
        case r'problems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.problems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentsListDefs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentsListDefs200ResponseBuilder();
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


