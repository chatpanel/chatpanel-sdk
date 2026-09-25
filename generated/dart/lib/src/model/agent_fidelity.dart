//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/agent_fidelity_dropped_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_fidelity.g.dart';

/// What survives a trip into a dialect, derived from what that dialect declares it can express.
///
/// Properties:
/// * [dialect] 
/// * [lossless] 
/// * [carried] 
/// * [dropped] 
@BuiltValue()
abstract class AgentFidelity implements Built<AgentFidelity, AgentFidelityBuilder> {
  @BuiltValueField(wireName: r'dialect')
  String? get dialect;

  @BuiltValueField(wireName: r'lossless')
  bool? get lossless;

  @BuiltValueField(wireName: r'carried')
  BuiltList<String>? get carried;

  @BuiltValueField(wireName: r'dropped')
  BuiltList<AgentFidelityDroppedInner>? get dropped;

  AgentFidelity._();

  factory AgentFidelity([void updates(AgentFidelityBuilder b)]) = _$AgentFidelity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentFidelityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentFidelity> get serializer => _$AgentFidelitySerializer();
}

class _$AgentFidelitySerializer implements PrimitiveSerializer<AgentFidelity> {
  @override
  final Iterable<Type> types = const [AgentFidelity, _$AgentFidelity];

  @override
  final String wireName = r'AgentFidelity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentFidelity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dialect != null) {
      yield r'dialect';
      yield serializers.serialize(
        object.dialect,
        specifiedType: const FullType(String),
      );
    }
    if (object.lossless != null) {
      yield r'lossless';
      yield serializers.serialize(
        object.lossless,
        specifiedType: const FullType(bool),
      );
    }
    if (object.carried != null) {
      yield r'carried';
      yield serializers.serialize(
        object.carried,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dropped != null) {
      yield r'dropped';
      yield serializers.serialize(
        object.dropped,
        specifiedType: const FullType(BuiltList, [FullType(AgentFidelityDroppedInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentFidelity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentFidelityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dialect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dialect = valueDes;
          break;
        case r'lossless':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lossless = valueDes;
          break;
        case r'carried':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.carried.replace(valueDes);
          break;
        case r'dropped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AgentFidelityDroppedInner)]),
          ) as BuiltList<AgentFidelityDroppedInner>?;
          if (valueDes == null) continue;
          result.dropped.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentFidelity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentFidelityBuilder();
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


