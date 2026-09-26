//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/runtime_document_bridge.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:chatpanel/src/model/runtime_document_processes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_document.g.dart';

/// The runtime — Settings › Runtime's one document (docs/sandboxing.md S1).
///
/// Properties:
/// * [sandbox] - the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows)
/// * [processes] 
/// * [containers] - every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1)
/// * [refused] - { id, engine, host, at } newest first
/// * [bridge] 
/// * [engines] - podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note }
/// * [services] - Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+).
/// * [inProcess] - rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.<id> { provider: 'embedded', model } or turn it off with { provider: 'none' }.
@BuiltValue()
abstract class RuntimeDocument implements Built<RuntimeDocument, RuntimeDocumentBuilder> {
  /// the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows)
  @BuiltValueField(wireName: r'sandbox')
  BuiltMap<String, JsonObject?>? get sandbox;

  @BuiltValueField(wireName: r'processes')
  RuntimeDocumentProcesses? get processes;

  /// every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1)
  @BuiltValueField(wireName: r'containers')
  BuiltList<BuiltMap<String, JsonObject?>>? get containers;

  /// { id, engine, host, at } newest first
  @BuiltValueField(wireName: r'refused')
  BuiltList<BuiltMap<String, JsonObject?>>? get refused;

  @BuiltValueField(wireName: r'bridge')
  RuntimeDocumentBridge? get bridge;

  /// podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note }
  @BuiltValueField(wireName: r'engines')
  BuiltMap<String, JsonObject?>? get engines;

  /// Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+).
  @BuiltValueField(wireName: r'services')
  BuiltMap<String, JsonObject?>? get services;

  /// rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.<id> { provider: 'embedded', model } or turn it off with { provider: 'none' }.
  @BuiltValueField(wireName: r'inProcess')
  BuiltMap<String, JsonObject?>? get inProcess;

  RuntimeDocument._();

  factory RuntimeDocument([void updates(RuntimeDocumentBuilder b)]) = _$RuntimeDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeDocument> get serializer => _$RuntimeDocumentSerializer();
}

class _$RuntimeDocumentSerializer implements PrimitiveSerializer<RuntimeDocument> {
  @override
  final Iterable<Type> types = const [RuntimeDocument, _$RuntimeDocument];

  @override
  final String wireName = r'RuntimeDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sandbox != null) {
      yield r'sandbox';
      yield serializers.serialize(
        object.sandbox,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.processes != null) {
      yield r'processes';
      yield serializers.serialize(
        object.processes,
        specifiedType: const FullType(RuntimeDocumentProcesses),
      );
    }
    if (object.containers != null) {
      yield r'containers';
      yield serializers.serialize(
        object.containers,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.refused != null) {
      yield r'refused';
      yield serializers.serialize(
        object.refused,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.bridge != null) {
      yield r'bridge';
      yield serializers.serialize(
        object.bridge,
        specifiedType: const FullType(RuntimeDocumentBridge),
      );
    }
    if (object.engines != null) {
      yield r'engines';
      yield serializers.serialize(
        object.engines,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.services != null) {
      yield r'services';
      yield serializers.serialize(
        object.services,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.inProcess != null) {
      yield r'inProcess';
      yield serializers.serialize(
        object.inProcess,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sandbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.sandbox.replace(valueDes);
          break;
        case r'processes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeDocumentProcesses),
          ) as RuntimeDocumentProcesses?;
          if (valueDes == null) continue;
          result.processes.replace(valueDes);
          break;
        case r'containers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.containers.replace(valueDes);
          break;
        case r'refused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.refused.replace(valueDes);
          break;
        case r'bridge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeDocumentBridge),
          ) as RuntimeDocumentBridge?;
          if (valueDes == null) continue;
          result.bridge.replace(valueDes);
          break;
        case r'engines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.engines.replace(valueDes);
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.services.replace(valueDes);
          break;
        case r'inProcess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.inProcess.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeDocumentBuilder();
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


