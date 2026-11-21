//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/runtime_recipe_projector.dart';
import 'package:chatpanel/src/model/runtime_recipe_draft.dart';
import 'package:chatpanel/src/model/runtime_recipe_quants_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_recipe.g.dart';

/// RuntimeRecipe
///
/// Properties:
/// * [ok] 
/// * [model] - owner/name:QUANT — what to pass as the service's model.
/// * [quant] 
/// * [arch] - The weights' general.architecture; null when the header could not be read.
/// * [layout] 
/// * [main] - The weights file in the repo (the first shard of a split model).
/// * [size] - Bytes of the weights for this quant.
/// * [fits] - Weights + projector + draft against about three quarters of the memory; null when the memory is unknown.
/// * [ramGB] 
/// * [quants] 
/// * [projector] 
/// * [draft] 
@BuiltValue()
abstract class RuntimeRecipe implements Built<RuntimeRecipe, RuntimeRecipeBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// owner/name:QUANT — what to pass as the service's model.
  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'quant')
  String get quant;

  /// The weights' general.architecture; null when the header could not be read.
  @BuiltValueField(wireName: r'arch')
  String? get arch;

  @BuiltValueField(wireName: r'layout')
  RuntimeRecipeLayoutEnum? get layout;
  // enum layoutEnum {  main,  alt,  };

  /// The weights file in the repo (the first shard of a split model).
  @BuiltValueField(wireName: r'main')
  String? get main;

  /// Bytes of the weights for this quant.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Weights + projector + draft against about three quarters of the memory; null when the memory is unknown.
  @BuiltValueField(wireName: r'fits')
  bool? get fits;

  @BuiltValueField(wireName: r'ramGB')
  num? get ramGB;

  @BuiltValueField(wireName: r'quants')
  BuiltList<RuntimeRecipeQuantsInner> get quants;

  @BuiltValueField(wireName: r'projector')
  RuntimeRecipeProjector? get projector;

  @BuiltValueField(wireName: r'draft')
  RuntimeRecipeDraft? get draft;

  RuntimeRecipe._();

  factory RuntimeRecipe([void updates(RuntimeRecipeBuilder b)]) = _$RuntimeRecipe;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeRecipeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeRecipe> get serializer => _$RuntimeRecipeSerializer();
}

class _$RuntimeRecipeSerializer implements PrimitiveSerializer<RuntimeRecipe> {
  @override
  final Iterable<Type> types = const [RuntimeRecipe, _$RuntimeRecipe];

  @override
  final String wireName = r'RuntimeRecipe';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeRecipe object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    yield r'quant';
    yield serializers.serialize(
      object.quant,
      specifiedType: const FullType(String),
    );
    if (object.arch != null) {
      yield r'arch';
      yield serializers.serialize(
        object.arch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.layout != null) {
      yield r'layout';
      yield serializers.serialize(
        object.layout,
        specifiedType: const FullType(RuntimeRecipeLayoutEnum),
      );
    }
    if (object.main != null) {
      yield r'main';
      yield serializers.serialize(
        object.main,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.fits != null) {
      yield r'fits';
      yield serializers.serialize(
        object.fits,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.ramGB != null) {
      yield r'ramGB';
      yield serializers.serialize(
        object.ramGB,
        specifiedType: const FullType(num),
      );
    }
    yield r'quants';
    yield serializers.serialize(
      object.quants,
      specifiedType: const FullType(BuiltList, [FullType(RuntimeRecipeQuantsInner)]),
    );
    if (object.projector != null) {
      yield r'projector';
      yield serializers.serialize(
        object.projector,
        specifiedType: const FullType.nullable(RuntimeRecipeProjector),
      );
    }
    if (object.draft != null) {
      yield r'draft';
      yield serializers.serialize(
        object.draft,
        specifiedType: const FullType.nullable(RuntimeRecipeDraft),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeRecipe object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeRecipeBuilder result,
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
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'quant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quant = valueDes;
          break;
        case r'arch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.arch = valueDes;
          break;
        case r'layout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeRecipeLayoutEnum),
          ) as RuntimeRecipeLayoutEnum?;
          if (valueDes == null) continue;
          result.layout = valueDes;
          break;
        case r'main':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.main = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'fits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fits = valueDes;
          break;
        case r'ramGB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ramGB = valueDes;
          break;
        case r'quants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RuntimeRecipeQuantsInner)]),
          ) as BuiltList<RuntimeRecipeQuantsInner>;
          result.quants.replace(valueDes);
          break;
        case r'projector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeRecipeProjector),
          ) as RuntimeRecipeProjector?;
          if (valueDes == null) continue;
          result.projector.replace(valueDes);
          break;
        case r'draft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeRecipeDraft),
          ) as RuntimeRecipeDraft?;
          if (valueDes == null) continue;
          result.draft.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeRecipe deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeRecipeBuilder();
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


class RuntimeRecipeLayoutEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'main')
  static const RuntimeRecipeLayoutEnum main = _$runtimeRecipeLayoutEnum_main;
  @BuiltValueEnumConst(wireName: r'alt')
  static const RuntimeRecipeLayoutEnum alt = _$runtimeRecipeLayoutEnum_alt;

  static Serializer<RuntimeRecipeLayoutEnum> get serializer => _$runtimeRecipeLayoutEnumSerializer;

  const RuntimeRecipeLayoutEnum._(String name): super(name);

  static BuiltSet<RuntimeRecipeLayoutEnum> get values => _$runtimeRecipeLayoutEnumValues;
  static RuntimeRecipeLayoutEnum valueOf(String name) => _$runtimeRecipeLayoutEnumValueOf(name);
}

