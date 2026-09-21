//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_document_processes.g.dart';

/// RuntimeDocumentProcesses
///
/// Properties:
/// * [all] - every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1)
/// * [localMcp] - id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env
/// * [warm] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class RuntimeDocumentProcesses implements Built<RuntimeDocumentProcesses, RuntimeDocumentProcessesBuilder> {
  /// every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1)
  @BuiltValueField(wireName: r'all')
  BuiltList<BuiltMap<String, JsonObject?>>? get all;

  /// id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env
  @BuiltValueField(wireName: r'localMcp')
  BuiltList<BuiltMap<String, JsonObject?>>? get localMcp;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'warm')
  BuiltMap<String, JsonObject?>? get warm;

  RuntimeDocumentProcesses._();

  factory RuntimeDocumentProcesses([void updates(RuntimeDocumentProcessesBuilder b)]) = _$RuntimeDocumentProcesses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeDocumentProcessesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeDocumentProcesses> get serializer => _$RuntimeDocumentProcessesSerializer();
}

class _$RuntimeDocumentProcessesSerializer implements PrimitiveSerializer<RuntimeDocumentProcesses> {
  @override
  final Iterable<Type> types = const [RuntimeDocumentProcesses, _$RuntimeDocumentProcesses];

  @override
  final String wireName = r'RuntimeDocumentProcesses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeDocumentProcesses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.all != null) {
      yield r'all';
      yield serializers.serialize(
        object.all,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.localMcp != null) {
      yield r'localMcp';
      yield serializers.serialize(
        object.localMcp,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.warm != null) {
      yield r'warm';
      yield serializers.serialize(
        object.warm,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeDocumentProcesses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeDocumentProcessesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'all':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.all.replace(valueDes);
          break;
        case r'localMcp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.localMcp.replace(valueDes);
          break;
        case r'warm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.warm.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeDocumentProcesses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeDocumentProcessesBuilder();
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


