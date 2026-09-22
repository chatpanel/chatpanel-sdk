//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model.g.dart';

/// Model
///
/// Properties:
/// * [id] 
/// * [object] 
/// * [ownedBy] 
/// * [provider] 
/// * [providerType] - 0.6.64+
/// * [api] 
/// * [endpoints] 
/// * [available] - 0.6.64+ for bridge agents — whether the CLI is installed.
/// * [configured] - 0.6.66+ — false when a turn is known to fail for something the user can fix.
/// * [reason] 
/// * [tools] - False when the agent cannot take per-turn tools.
/// * [reach] - 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field.
@BuiltValue()
abstract class Model implements Built<Model, ModelBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'object')
  ModelObjectEnum get object;
  // enum objectEnum {  model,  };

  @BuiltValueField(wireName: r'owned_by')
  String? get ownedBy;

  @BuiltValueField(wireName: r'provider')
  String? get provider;

  /// 0.6.64+
  @BuiltValueField(wireName: r'provider_type')
  ModelProviderTypeEnum? get providerType;
  // enum providerTypeEnum {  agent,  openai,  anthropic,  };

  @BuiltValueField(wireName: r'api')
  String? get api;

  @BuiltValueField(wireName: r'endpoints')
  BuiltList<String>? get endpoints;

  /// 0.6.64+ for bridge agents — whether the CLI is installed.
  @BuiltValueField(wireName: r'available')
  bool? get available;

  /// 0.6.66+ — false when a turn is known to fail for something the user can fix.
  @BuiltValueField(wireName: r'configured')
  bool? get configured;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// False when the agent cannot take per-turn tools.
  @BuiltValueField(wireName: r'tools')
  bool? get tools;

  /// 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field.
  @BuiltValueField(wireName: r'reach')
  ModelReachEnum? get reach;
  // enum reachEnum {  device,  trusted,  any,  };

  Model._();

  factory Model([void updates(ModelBuilder b)]) = _$Model;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Model> get serializer => _$ModelSerializer();
}

class _$ModelSerializer implements PrimitiveSerializer<Model> {
  @override
  final Iterable<Type> types = const [Model, _$Model];

  @override
  final String wireName = r'Model';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Model object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(ModelObjectEnum),
    );
    if (object.ownedBy != null) {
      yield r'owned_by';
      yield serializers.serialize(
        object.ownedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.providerType != null) {
      yield r'provider_type';
      yield serializers.serialize(
        object.providerType,
        specifiedType: const FullType(ModelProviderTypeEnum),
      );
    }
    if (object.api != null) {
      yield r'api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(String),
      );
    }
    if (object.endpoints != null) {
      yield r'endpoints';
      yield serializers.serialize(
        object.endpoints,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.available != null) {
      yield r'available';
      yield serializers.serialize(
        object.available,
        specifiedType: const FullType(bool),
      );
    }
    if (object.configured != null) {
      yield r'configured';
      yield serializers.serialize(
        object.configured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.tools != null) {
      yield r'tools';
      yield serializers.serialize(
        object.tools,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reach != null) {
      yield r'reach';
      yield serializers.serialize(
        object.reach,
        specifiedType: const FullType(ModelReachEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Model object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelBuilder result,
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
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModelObjectEnum),
          ) as ModelObjectEnum;
          result.object = valueDes;
          break;
        case r'owned_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownedBy = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'provider_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelProviderTypeEnum),
          ) as ModelProviderTypeEnum?;
          if (valueDes == null) continue;
          result.providerType = valueDes;
          break;
        case r'api':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.api = valueDes;
          break;
        case r'endpoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.endpoints.replace(valueDes);
          break;
        case r'available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.available = valueDes;
          break;
        case r'configured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.configured = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'tools':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.tools = valueDes;
          break;
        case r'reach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ModelReachEnum),
          ) as ModelReachEnum?;
          if (valueDes == null) continue;
          result.reach = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Model deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelBuilder();
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


class ModelObjectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'model')
  static const ModelObjectEnum model = _$modelObjectEnum_model;

  static Serializer<ModelObjectEnum> get serializer => _$modelObjectEnumSerializer;

  const ModelObjectEnum._(String name): super(name);

  static BuiltSet<ModelObjectEnum> get values => _$modelObjectEnumValues;
  static ModelObjectEnum valueOf(String name) => _$modelObjectEnumValueOf(name);
}

/// 0.6.64+
class ModelProviderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'agent')
  static const ModelProviderTypeEnum agent = _$modelProviderTypeEnum_agent;
  @BuiltValueEnumConst(wireName: r'openai')
  static const ModelProviderTypeEnum openai = _$modelProviderTypeEnum_openai;
  @BuiltValueEnumConst(wireName: r'anthropic')
  static const ModelProviderTypeEnum anthropic = _$modelProviderTypeEnum_anthropic;

  static Serializer<ModelProviderTypeEnum> get serializer => _$modelProviderTypeEnumSerializer;

  const ModelProviderTypeEnum._(String name): super(name);

  static BuiltSet<ModelProviderTypeEnum> get values => _$modelProviderTypeEnumValues;
  static ModelProviderTypeEnum valueOf(String name) => _$modelProviderTypeEnumValueOf(name);
}

/// 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field.
class ModelReachEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'device')
  static const ModelReachEnum device = _$modelReachEnum_device;
  @BuiltValueEnumConst(wireName: r'trusted')
  static const ModelReachEnum trusted = _$modelReachEnum_trusted;
  @BuiltValueEnumConst(wireName: r'any')
  static const ModelReachEnum any = _$modelReachEnum_any;

  static Serializer<ModelReachEnum> get serializer => _$modelReachEnumSerializer;

  const ModelReachEnum._(String name): super(name);

  static BuiltSet<ModelReachEnum> get values => _$modelReachEnumValues;
  static ModelReachEnum valueOf(String name) => _$modelReachEnumValueOf(name);
}

