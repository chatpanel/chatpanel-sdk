//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/capability_stats.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capability.g.dart';

/// Capability
///
/// Properties:
/// * [id] 
/// * [route] - The standard route for this capability on this provider.
/// * [models] - Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those.
/// * [providers] - Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those.
/// * [default_] - One of `models`, or of `providers`.
/// * [labels] - detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded.
/// * [maxTokens] - detect: the tokenizer's limit; null when effectively unbounded.
/// * [requirements] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [stats] 
/// * [runtime] - state (off | loading | downloading | ready | error | external), name, dtype, error…
/// * [streaming] - stt: the session route for live dictation.
/// * [voices] - tts: the voices route.
@BuiltValue()
abstract class Capability implements Built<Capability, CapabilityBuilder> {
  @BuiltValueField(wireName: r'id')
  CapabilityIdEnum get id;
  // enum idEnum {  detect,  decide,  rerank,  embed,  stt,  tts,  search,  read,  };

  /// The standard route for this capability on this provider.
  @BuiltValueField(wireName: r'route')
  String get route;

  /// Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those.
  @BuiltValueField(wireName: r'models')
  BuiltList<String>? get models;

  /// Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those.
  @BuiltValueField(wireName: r'providers')
  BuiltList<String>? get providers;

  /// One of `models`, or of `providers`.
  @BuiltValueField(wireName: r'default')
  String? get default_;

  /// detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded.
  @BuiltValueField(wireName: r'labels')
  BuiltList<String>? get labels;

  /// detect: the tokenizer's limit; null when effectively unbounded.
  @BuiltValueField(wireName: r'maxTokens')
  int? get maxTokens;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'requirements')
  BuiltMap<String, JsonObject?>? get requirements;

  @BuiltValueField(wireName: r'stats')
  CapabilityStats? get stats;

  /// state (off | loading | downloading | ready | error | external), name, dtype, error…
  @BuiltValueField(wireName: r'runtime')
  BuiltMap<String, JsonObject?>? get runtime;

  /// stt: the session route for live dictation.
  @BuiltValueField(wireName: r'streaming')
  String? get streaming;

  /// tts: the voices route.
  @BuiltValueField(wireName: r'voices')
  String? get voices;

  Capability._();

  factory Capability([void updates(CapabilityBuilder b)]) = _$Capability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CapabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Capability> get serializer => _$CapabilitySerializer();
}

class _$CapabilitySerializer implements PrimitiveSerializer<Capability> {
  @override
  final Iterable<Type> types = const [Capability, _$Capability];

  @override
  final String wireName = r'Capability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Capability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(CapabilityIdEnum),
    );
    yield r'route';
    yield serializers.serialize(
      object.route,
      specifiedType: const FullType(String),
    );
    if (object.models != null) {
      yield r'models';
      yield serializers.serialize(
        object.models,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.providers != null) {
      yield r'providers';
      yield serializers.serialize(
        object.providers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(String),
      );
    }
    if (object.labels != null) {
      yield r'labels';
      yield serializers.serialize(
        object.labels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maxTokens != null) {
      yield r'maxTokens';
      yield serializers.serialize(
        object.maxTokens,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.requirements != null) {
      yield r'requirements';
      yield serializers.serialize(
        object.requirements,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(CapabilityStats),
      );
    }
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.streaming != null) {
      yield r'streaming';
      yield serializers.serialize(
        object.streaming,
        specifiedType: const FullType(String),
      );
    }
    if (object.voices != null) {
      yield r'voices';
      yield serializers.serialize(
        object.voices,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Capability object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CapabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CapabilityIdEnum),
          ) as CapabilityIdEnum;
          result.id = valueDes;
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.route = valueDes;
          break;
        case r'models':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.models.replace(valueDes);
          break;
        case r'providers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.providers.replace(valueDes);
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'labels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.labels.replace(valueDes);
          break;
        case r'maxTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTokens = valueDes;
          break;
        case r'requirements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.requirements.replace(valueDes);
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CapabilityStats),
          ) as CapabilityStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.runtime.replace(valueDes);
          break;
        case r'streaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.streaming = valueDes;
          break;
        case r'voices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voices = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Capability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapabilityBuilder();
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


class CapabilityIdEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'detect')
  static const CapabilityIdEnum detect = _$capabilityIdEnum_detect;
  @BuiltValueEnumConst(wireName: r'decide')
  static const CapabilityIdEnum decide = _$capabilityIdEnum_decide;
  @BuiltValueEnumConst(wireName: r'rerank')
  static const CapabilityIdEnum rerank = _$capabilityIdEnum_rerank;
  @BuiltValueEnumConst(wireName: r'embed')
  static const CapabilityIdEnum embed = _$capabilityIdEnum_embed;
  @BuiltValueEnumConst(wireName: r'stt')
  static const CapabilityIdEnum stt = _$capabilityIdEnum_stt;
  @BuiltValueEnumConst(wireName: r'tts')
  static const CapabilityIdEnum tts = _$capabilityIdEnum_tts;
  @BuiltValueEnumConst(wireName: r'search')
  static const CapabilityIdEnum search = _$capabilityIdEnum_search;
  @BuiltValueEnumConst(wireName: r'read')
  static const CapabilityIdEnum read = _$capabilityIdEnum_read;

  static Serializer<CapabilityIdEnum> get serializer => _$capabilityIdEnumSerializer;

  const CapabilityIdEnum._(String name): super(name);

  static BuiltSet<CapabilityIdEnum> get values => _$capabilityIdEnumValues;
  static CapabilityIdEnum valueOf(String name) => _$capabilityIdEnumValueOf(name);
}

