//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/runtime_plan_live.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_plan.g.dart';

/// Whether a local model fits in memory (gateway 0.74+) — `GET /v1/runtime/plan`, and on a start the live-memory check refused.
///
/// Properties:
/// * [ok] 
/// * [service] 
/// * [model] 
/// * [needMB] - Weights + KV cache + 10% headroom.
/// * [weightsMB] 
/// * [kvMB] - The KV cache for the context; null when the model's config.json is not on disk.
/// * [context] 
/// * [contextCounted] 
/// * [source_] 
/// * [fits] 
/// * [live] 
/// * [advice] - One sentence for the person.
@BuiltValue()
abstract class RuntimePlan implements Built<RuntimePlan, RuntimePlanBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'service')
  String? get service;

  @BuiltValueField(wireName: r'model')
  String? get model;

  /// Weights + KV cache + 10% headroom.
  @BuiltValueField(wireName: r'needMB')
  int? get needMB;

  @BuiltValueField(wireName: r'weightsMB')
  int? get weightsMB;

  /// The KV cache for the context; null when the model's config.json is not on disk.
  @BuiltValueField(wireName: r'kvMB')
  int? get kvMB;

  @BuiltValueField(wireName: r'context')
  int? get context;

  @BuiltValueField(wireName: r'contextCounted')
  bool? get contextCounted;

  @BuiltValueField(wireName: r'source')
  RuntimePlanSource_Enum? get source_;
  // enum source_Enum {  heatwatch,  total-memory,  };

  @BuiltValueField(wireName: r'fits')
  bool? get fits;

  @BuiltValueField(wireName: r'live')
  RuntimePlanLive? get live;

  /// One sentence for the person.
  @BuiltValueField(wireName: r'advice')
  String? get advice;

  RuntimePlan._();

  factory RuntimePlan([void updates(RuntimePlanBuilder b)]) = _$RuntimePlan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimePlanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimePlan> get serializer => _$RuntimePlanSerializer();
}

class _$RuntimePlanSerializer implements PrimitiveSerializer<RuntimePlan> {
  @override
  final Iterable<Type> types = const [RuntimePlan, _$RuntimePlan];

  @override
  final String wireName = r'RuntimePlan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimePlan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.needMB != null) {
      yield r'needMB';
      yield serializers.serialize(
        object.needMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.weightsMB != null) {
      yield r'weightsMB';
      yield serializers.serialize(
        object.weightsMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.kvMB != null) {
      yield r'kvMB';
      yield serializers.serialize(
        object.kvMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(int),
      );
    }
    if (object.contextCounted != null) {
      yield r'contextCounted';
      yield serializers.serialize(
        object.contextCounted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(RuntimePlanSource_Enum),
      );
    }
    if (object.fits != null) {
      yield r'fits';
      yield serializers.serialize(
        object.fits,
        specifiedType: const FullType(bool),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(RuntimePlanLive),
      );
    }
    if (object.advice != null) {
      yield r'advice';
      yield serializers.serialize(
        object.advice,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimePlan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimePlanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.service = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'needMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.needMB = valueDes;
          break;
        case r'weightsMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weightsMB = valueDes;
          break;
        case r'kvMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.kvMB = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.context = valueDes;
          break;
        case r'contextCounted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.contextCounted = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimePlanSource_Enum),
          ) as RuntimePlanSource_Enum?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'fits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fits = valueDes;
          break;
        case r'live':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimePlanLive),
          ) as RuntimePlanLive?;
          if (valueDes == null) continue;
          result.live.replace(valueDes);
          break;
        case r'advice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.advice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimePlan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimePlanBuilder();
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


class RuntimePlanSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'heatwatch')
  static const RuntimePlanSource_Enum heatwatch = _$runtimePlanSourceEnum_heatwatch;
  @BuiltValueEnumConst(wireName: r'total-memory')
  static const RuntimePlanSource_Enum totalMemory = _$runtimePlanSourceEnum_totalMemory;

  static Serializer<RuntimePlanSource_Enum> get serializer => _$runtimePlanSourceEnumSerializer;

  const RuntimePlanSource_Enum._(String name): super(name);

  static BuiltSet<RuntimePlanSource_Enum> get values => _$runtimePlanSourceEnumValues;
  static RuntimePlanSource_Enum valueOf(String name) => _$runtimePlanSourceEnumValueOf(name);
}

