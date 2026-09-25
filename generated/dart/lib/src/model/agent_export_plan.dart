//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_fidelity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_export_plan.g.dart';

/// AgentExportPlan
///
/// Properties:
/// * [to] 
/// * [label] 
/// * [path] - The exact file that would be written.
/// * [text] - Its rendered contents.
/// * [exists] 
/// * [status] - `theirs` means ChatPanel did not write it, or it has been edited since.
/// * [fidelity] 
@BuiltValue()
abstract class AgentExportPlan implements Built<AgentExportPlan, AgentExportPlanBuilder> {
  @BuiltValueField(wireName: r'to')
  String? get to;

  @BuiltValueField(wireName: r'label')
  String? get label;

  /// The exact file that would be written.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// Its rendered contents.
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  /// `theirs` means ChatPanel did not write it, or it has been edited since.
  @BuiltValueField(wireName: r'status')
  AgentExportPlanStatusEnum? get status;
  // enum statusEnum {  new,  ours,  theirs,  };

  @BuiltValueField(wireName: r'fidelity')
  AgentFidelity? get fidelity;

  AgentExportPlan._();

  factory AgentExportPlan([void updates(AgentExportPlanBuilder b)]) = _$AgentExportPlan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentExportPlanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentExportPlan> get serializer => _$AgentExportPlanSerializer();
}

class _$AgentExportPlanSerializer implements PrimitiveSerializer<AgentExportPlan> {
  @override
  final Iterable<Type> types = const [AgentExportPlan, _$AgentExportPlan];

  @override
  final String wireName = r'AgentExportPlan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentExportPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
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
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.exists != null) {
      yield r'exists';
      yield serializers.serialize(
        object.exists,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(AgentExportPlanStatusEnum),
      );
    }
    if (object.fidelity != null) {
      yield r'fidelity';
      yield serializers.serialize(
        object.fidelity,
        specifiedType: const FullType(AgentFidelity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentExportPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentExportPlanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exists = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentExportPlanStatusEnum),
          ) as AgentExportPlanStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'fidelity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentFidelity),
          ) as AgentFidelity?;
          if (valueDes == null) continue;
          result.fidelity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentExportPlan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentExportPlanBuilder();
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


/// `theirs` means ChatPanel did not write it, or it has been edited since.
class AgentExportPlanStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'new')
  static const AgentExportPlanStatusEnum new_ = _$agentExportPlanStatusEnum_new_;
  @BuiltValueEnumConst(wireName: r'ours')
  static const AgentExportPlanStatusEnum ours = _$agentExportPlanStatusEnum_ours;
  @BuiltValueEnumConst(wireName: r'theirs')
  static const AgentExportPlanStatusEnum theirs = _$agentExportPlanStatusEnum_theirs;

  static Serializer<AgentExportPlanStatusEnum> get serializer => _$agentExportPlanStatusEnumSerializer;

  const AgentExportPlanStatusEnum._(String name): super(name);

  static BuiltSet<AgentExportPlanStatusEnum> get values => _$agentExportPlanStatusEnumValues;
  static AgentExportPlanStatusEnum valueOf(String name) => _$agentExportPlanStatusEnumValueOf(name);
}

