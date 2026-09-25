//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_def.g.dart';

/// An agent definition, read from whichever tool's dialect wrote it.
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [purpose] 
/// * [dialect] 
/// * [source_] - The folder it was read from: chatpanel, claude, codex, agents-dir, external.
/// * [label] 
/// * [path] - Relative to the root it was found in.
/// * [writable] 
/// * [engine] 
/// * [grants] 
/// * [skills] 
/// * [promptChars] 
/// * [prompt] - Only on `GET /agent-defs/{agentId}`.
/// * [warnings] - What the dialect could not map — an unmapped tool is reported, never widened into a grant.
/// * [scanned] 
@BuiltValue()
abstract class AgentDef implements Built<AgentDef, AgentDefBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'purpose')
  String? get purpose;

  @BuiltValueField(wireName: r'dialect')
  AgentDefDialectEnum? get dialect;
  // enum dialectEnum {  chatpanel,  claude,  codex,  a2a,  };

  /// The folder it was read from: chatpanel, claude, codex, agents-dir, external.
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Relative to the root it was found in.
  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'writable')
  bool? get writable;

  @BuiltValueField(wireName: r'engine')
  BuiltMap<String, JsonObject?>? get engine;

  @BuiltValueField(wireName: r'grants')
  BuiltList<String>? get grants;

  @BuiltValueField(wireName: r'skills')
  BuiltList<String>? get skills;

  @BuiltValueField(wireName: r'promptChars')
  int? get promptChars;

  /// Only on `GET /agent-defs/{agentId}`.
  @BuiltValueField(wireName: r'prompt')
  String? get prompt;

  /// What the dialect could not map — an unmapped tool is reported, never widened into a grant.
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'scanned')
  BuiltMap<String, JsonObject?>? get scanned;

  AgentDef._();

  factory AgentDef([void updates(AgentDefBuilder b)]) = _$AgentDef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentDefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentDef> get serializer => _$AgentDefSerializer();
}

class _$AgentDefSerializer implements PrimitiveSerializer<AgentDef> {
  @override
  final Iterable<Type> types = const [AgentDef, _$AgentDef];

  @override
  final String wireName = r'AgentDef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentDef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.purpose != null) {
      yield r'purpose';
      yield serializers.serialize(
        object.purpose,
        specifiedType: const FullType(String),
      );
    }
    if (object.dialect != null) {
      yield r'dialect';
      yield serializers.serialize(
        object.dialect,
        specifiedType: const FullType(AgentDefDialectEnum),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
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
    if (object.writable != null) {
      yield r'writable';
      yield serializers.serialize(
        object.writable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.engine != null) {
      yield r'engine';
      yield serializers.serialize(
        object.engine,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.grants != null) {
      yield r'grants';
      yield serializers.serialize(
        object.grants,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.skills != null) {
      yield r'skills';
      yield serializers.serialize(
        object.skills,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.promptChars != null) {
      yield r'promptChars';
      yield serializers.serialize(
        object.promptChars,
        specifiedType: const FullType(int),
      );
    }
    if (object.prompt != null) {
      yield r'prompt';
      yield serializers.serialize(
        object.prompt,
        specifiedType: const FullType(String),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.scanned != null) {
      yield r'scanned';
      yield serializers.serialize(
        object.scanned,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentDef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentDefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.purpose = valueDes;
          break;
        case r'dialect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentDefDialectEnum),
          ) as AgentDefDialectEnum?;
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
        case r'writable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.writable = valueDes;
          break;
        case r'engine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.engine.replace(valueDes);
          break;
        case r'grants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.grants.replace(valueDes);
          break;
        case r'skills':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.skills.replace(valueDes);
          break;
        case r'promptChars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.promptChars = valueDes;
          break;
        case r'prompt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prompt = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'scanned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.scanned.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentDef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentDefBuilder();
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


class AgentDefDialectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'chatpanel')
  static const AgentDefDialectEnum chatpanel = _$agentDefDialectEnum_chatpanel;
  @BuiltValueEnumConst(wireName: r'claude')
  static const AgentDefDialectEnum claude = _$agentDefDialectEnum_claude;
  @BuiltValueEnumConst(wireName: r'codex')
  static const AgentDefDialectEnum codex = _$agentDefDialectEnum_codex;
  @BuiltValueEnumConst(wireName: r'a2a')
  static const AgentDefDialectEnum a2a = _$agentDefDialectEnum_a2a;

  static Serializer<AgentDefDialectEnum> get serializer => _$agentDefDialectEnumSerializer;

  const AgentDefDialectEnum._(String name): super(name);

  static BuiltSet<AgentDefDialectEnum> get values => _$agentDefDialectEnumValues;
  static AgentDefDialectEnum valueOf(String name) => _$agentDefDialectEnumValueOf(name);
}

