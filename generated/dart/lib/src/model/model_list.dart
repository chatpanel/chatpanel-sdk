//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_list.g.dart';

/// ModelList
///
/// Properties:
/// * [object] 
/// * [data] 
@BuiltValue()
abstract class ModelList implements Built<ModelList, ModelListBuilder> {
  @BuiltValueField(wireName: r'object')
  ModelListObjectEnum get object;
  // enum objectEnum {  list,  };

  @BuiltValueField(wireName: r'data')
  BuiltList<Model> get data;

  ModelList._();

  factory ModelList([void updates(ModelListBuilder b)]) = _$ModelList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelList> get serializer => _$ModelListSerializer();
}

class _$ModelListSerializer implements PrimitiveSerializer<ModelList> {
  @override
  final Iterable<Type> types = const [ModelList, _$ModelList];

  @override
  final String wireName = r'ModelList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(ModelListObjectEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Model)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModelListObjectEnum),
          ) as ModelListObjectEnum;
          result.object = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Model)]),
          ) as BuiltList<Model>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelListBuilder();
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


class ModelListObjectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'list')
  static const ModelListObjectEnum list = _$modelListObjectEnum_list;

  static Serializer<ModelListObjectEnum> get serializer => _$modelListObjectEnumSerializer;

  const ModelListObjectEnum._(String name): super(name);

  static BuiltSet<ModelListObjectEnum> get values => _$modelListObjectEnumValues;
  static ModelListObjectEnum valueOf(String name) => _$modelListObjectEnumValueOf(name);
}

