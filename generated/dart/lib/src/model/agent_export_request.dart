//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/agent_def.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_export_request.g.dart';

/// AgentExportRequest
///
/// Properties:
/// * [agent] 
/// * [to] - The dialect to write.
/// * [overwrite] - Only ever after a plan reported `theirs` and a person agreed.
@BuiltValue()
abstract class AgentExportRequest implements Built<AgentExportRequest, AgentExportRequestBuilder> {
  @BuiltValueField(wireName: r'agent')
  AgentDef get agent;

  /// The dialect to write.
  @BuiltValueField(wireName: r'to')
  AgentExportRequestToEnum get to;
  // enum toEnum {  claude,  codex,  chatpanel,  };

  /// Only ever after a plan reported `theirs` and a person agreed.
  @BuiltValueField(wireName: r'overwrite')
  bool? get overwrite;

  AgentExportRequest._();

  factory AgentExportRequest([void updates(AgentExportRequestBuilder b)]) = _$AgentExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentExportRequestBuilder b) => b
      ..overwrite = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentExportRequest> get serializer => _$AgentExportRequestSerializer();
}

class _$AgentExportRequestSerializer implements PrimitiveSerializer<AgentExportRequest> {
  @override
  final Iterable<Type> types = const [AgentExportRequest, _$AgentExportRequest];

  @override
  final String wireName = r'AgentExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agent';
    yield serializers.serialize(
      object.agent,
      specifiedType: const FullType(AgentDef),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(AgentExportRequestToEnum),
    );
    if (object.overwrite != null) {
      yield r'overwrite';
      yield serializers.serialize(
        object.overwrite,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentExportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentDef),
          ) as AgentDef;
          result.agent = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentExportRequestToEnum),
          ) as AgentExportRequestToEnum;
          result.to = valueDes;
          break;
        case r'overwrite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.overwrite = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentExportRequestBuilder();
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


/// The dialect to write.
class AgentExportRequestToEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'claude')
  static const AgentExportRequestToEnum claude = _$agentExportRequestToEnum_claude;
  @BuiltValueEnumConst(wireName: r'codex')
  static const AgentExportRequestToEnum codex = _$agentExportRequestToEnum_codex;
  @BuiltValueEnumConst(wireName: r'chatpanel')
  static const AgentExportRequestToEnum chatpanel = _$agentExportRequestToEnum_chatpanel;

  static Serializer<AgentExportRequestToEnum> get serializer => _$agentExportRequestToEnumSerializer;

  const AgentExportRequestToEnum._(String name): super(name);

  static BuiltSet<AgentExportRequestToEnum> get values => _$agentExportRequestToEnumValues;
  static AgentExportRequestToEnum valueOf(String name) => _$agentExportRequestToEnumValueOf(name);
}

