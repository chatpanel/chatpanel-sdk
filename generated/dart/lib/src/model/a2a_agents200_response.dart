//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'a2a_agents200_response.g.dart';

/// A2aAgents200Response
///
/// Properties:
/// * [agents] 
@BuiltValue()
abstract class A2aAgents200Response implements Built<A2aAgents200Response, A2aAgents200ResponseBuilder> {
  @BuiltValueField(wireName: r'agents')
  BuiltList<BuiltMap<String, JsonObject?>> get agents;

  A2aAgents200Response._();

  factory A2aAgents200Response([void updates(A2aAgents200ResponseBuilder b)]) = _$A2aAgents200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(A2aAgents200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<A2aAgents200Response> get serializer => _$A2aAgents200ResponseSerializer();
}

class _$A2aAgents200ResponseSerializer implements PrimitiveSerializer<A2aAgents200Response> {
  @override
  final Iterable<Type> types = const [A2aAgents200Response, _$A2aAgents200Response];

  @override
  final String wireName = r'A2aAgents200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    A2aAgents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agents';
    yield serializers.serialize(
      object.agents,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    A2aAgents200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required A2aAgents200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  A2aAgents200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = A2aAgents200ResponseBuilder();
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


