//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agents_scorecards200_response.g.dart';

/// AgentsScorecards200Response
///
/// Properties:
/// * [ok] 
/// * [agents] 
@BuiltValue()
abstract class AgentsScorecards200Response implements Built<AgentsScorecards200Response, AgentsScorecards200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'agents')
  BuiltList<BuiltMap<String, JsonObject?>> get agents;

  AgentsScorecards200Response._();

  factory AgentsScorecards200Response([void updates(AgentsScorecards200ResponseBuilder b)]) = _$AgentsScorecards200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentsScorecards200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentsScorecards200Response> get serializer => _$AgentsScorecards200ResponseSerializer();
}

class _$AgentsScorecards200ResponseSerializer implements PrimitiveSerializer<AgentsScorecards200Response> {
  @override
  final Iterable<Type> types = const [AgentsScorecards200Response, _$AgentsScorecards200Response];

  @override
  final String wireName = r'AgentsScorecards200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentsScorecards200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'agents';
    yield serializers.serialize(
      object.agents,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentsScorecards200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentsScorecards200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'agents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.agents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentsScorecards200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentsScorecards200ResponseBuilder();
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


