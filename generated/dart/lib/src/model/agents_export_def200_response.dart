//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_fidelity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agents_export_def200_response.g.dart';

/// AgentsExportDef200Response
///
/// Properties:
/// * [ok] 
/// * [path] 
/// * [to] 
/// * [backedUp] 
/// * [status] 
/// * [fidelity] 
@BuiltValue()
abstract class AgentsExportDef200Response implements Built<AgentsExportDef200Response, AgentsExportDef200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool? get ok;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'to')
  String? get to;

  @BuiltValueField(wireName: r'backedUp')
  bool? get backedUp;

  @BuiltValueField(wireName: r'status')
  AgentsExportDef200ResponseStatusEnum? get status;
  // enum statusEnum {  new,  ours,  theirs,  };

  @BuiltValueField(wireName: r'fidelity')
  AgentFidelity? get fidelity;

  AgentsExportDef200Response._();

  factory AgentsExportDef200Response([void updates(AgentsExportDef200ResponseBuilder b)]) = _$AgentsExportDef200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentsExportDef200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentsExportDef200Response> get serializer => _$AgentsExportDef200ResponseSerializer();
}

class _$AgentsExportDef200ResponseSerializer implements PrimitiveSerializer<AgentsExportDef200Response> {
  @override
  final Iterable<Type> types = const [AgentsExportDef200Response, _$AgentsExportDef200Response];

  @override
  final String wireName = r'AgentsExportDef200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentsExportDef200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(bool),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
    if (object.backedUp != null) {
      yield r'backedUp';
      yield serializers.serialize(
        object.backedUp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(AgentsExportDef200ResponseStatusEnum),
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
    AgentsExportDef200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentsExportDef200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ok = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'backedUp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.backedUp = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentsExportDef200ResponseStatusEnum),
          ) as AgentsExportDef200ResponseStatusEnum?;
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
  AgentsExportDef200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentsExportDef200ResponseBuilder();
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


class AgentsExportDef200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'new')
  static const AgentsExportDef200ResponseStatusEnum new_ = _$agentsExportDef200ResponseStatusEnum_new_;
  @BuiltValueEnumConst(wireName: r'ours')
  static const AgentsExportDef200ResponseStatusEnum ours = _$agentsExportDef200ResponseStatusEnum_ours;
  @BuiltValueEnumConst(wireName: r'theirs')
  static const AgentsExportDef200ResponseStatusEnum theirs = _$agentsExportDef200ResponseStatusEnum_theirs;

  static Serializer<AgentsExportDef200ResponseStatusEnum> get serializer => _$agentsExportDef200ResponseStatusEnumSerializer;

  const AgentsExportDef200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<AgentsExportDef200ResponseStatusEnum> get values => _$agentsExportDef200ResponseStatusEnumValues;
  static AgentsExportDef200ResponseStatusEnum valueOf(String name) => _$agentsExportDef200ResponseStatusEnumValueOf(name);
}

