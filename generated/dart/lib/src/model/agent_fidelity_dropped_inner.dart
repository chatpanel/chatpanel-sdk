//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_fidelity_dropped_inner.g.dart';

/// AgentFidelityDroppedInner
///
/// Properties:
/// * [field] 
/// * [why] 
@BuiltValue()
abstract class AgentFidelityDroppedInner implements Built<AgentFidelityDroppedInner, AgentFidelityDroppedInnerBuilder> {
  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'why')
  String? get why;

  AgentFidelityDroppedInner._();

  factory AgentFidelityDroppedInner([void updates(AgentFidelityDroppedInnerBuilder b)]) = _$AgentFidelityDroppedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentFidelityDroppedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentFidelityDroppedInner> get serializer => _$AgentFidelityDroppedInnerSerializer();
}

class _$AgentFidelityDroppedInnerSerializer implements PrimitiveSerializer<AgentFidelityDroppedInner> {
  @override
  final Iterable<Type> types = const [AgentFidelityDroppedInner, _$AgentFidelityDroppedInner];

  @override
  final String wireName = r'AgentFidelityDroppedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentFidelityDroppedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.why != null) {
      yield r'why';
      yield serializers.serialize(
        object.why,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentFidelityDroppedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentFidelityDroppedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.field = valueDes;
          break;
        case r'why':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.why = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentFidelityDroppedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentFidelityDroppedInnerBuilder();
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


