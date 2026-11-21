//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_recipe_quants_inner.g.dart';

/// RuntimeRecipeQuantsInner
///
/// Properties:
/// * [quant] 
/// * [size] 
/// * [fits] 
@BuiltValue()
abstract class RuntimeRecipeQuantsInner implements Built<RuntimeRecipeQuantsInner, RuntimeRecipeQuantsInnerBuilder> {
  @BuiltValueField(wireName: r'quant')
  String get quant;

  @BuiltValueField(wireName: r'size')
  int get size;

  @BuiltValueField(wireName: r'fits')
  bool? get fits;

  RuntimeRecipeQuantsInner._();

  factory RuntimeRecipeQuantsInner([void updates(RuntimeRecipeQuantsInnerBuilder b)]) = _$RuntimeRecipeQuantsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeRecipeQuantsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeRecipeQuantsInner> get serializer => _$RuntimeRecipeQuantsInnerSerializer();
}

class _$RuntimeRecipeQuantsInnerSerializer implements PrimitiveSerializer<RuntimeRecipeQuantsInner> {
  @override
  final Iterable<Type> types = const [RuntimeRecipeQuantsInner, _$RuntimeRecipeQuantsInner];

  @override
  final String wireName = r'RuntimeRecipeQuantsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeRecipeQuantsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quant';
    yield serializers.serialize(
      object.quant,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    if (object.fits != null) {
      yield r'fits';
      yield serializers.serialize(
        object.fits,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeRecipeQuantsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeRecipeQuantsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quant = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeRecipeQuantsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeRecipeQuantsInnerBuilder();
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


