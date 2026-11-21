//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_recipe_projector.g.dart';

/// RuntimeRecipeProjector
///
/// Properties:
/// * [path] 
/// * [size] 
@BuiltValue()
abstract class RuntimeRecipeProjector implements Built<RuntimeRecipeProjector, RuntimeRecipeProjectorBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'size')
  int? get size;

  RuntimeRecipeProjector._();

  factory RuntimeRecipeProjector([void updates(RuntimeRecipeProjectorBuilder b)]) = _$RuntimeRecipeProjector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeRecipeProjectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeRecipeProjector> get serializer => _$RuntimeRecipeProjectorSerializer();
}

class _$RuntimeRecipeProjectorSerializer implements PrimitiveSerializer<RuntimeRecipeProjector> {
  @override
  final Iterable<Type> types = const [RuntimeRecipeProjector, _$RuntimeRecipeProjector];

  @override
  final String wireName = r'RuntimeRecipeProjector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeRecipeProjector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeRecipeProjector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeRecipeProjectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeRecipeProjector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeRecipeProjectorBuilder();
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


