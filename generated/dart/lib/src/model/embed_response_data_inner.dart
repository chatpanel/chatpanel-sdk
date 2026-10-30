//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'embed_response_data_inner.g.dart';

/// EmbedResponseDataInner
///
/// Properties:
/// * [object] 
/// * [index] 
/// * [embedding] - Unit length.
@BuiltValue()
abstract class EmbedResponseDataInner implements Built<EmbedResponseDataInner, EmbedResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'object')
  EmbedResponseDataInnerObjectEnum get object;
  // enum objectEnum {  embedding,  };

  @BuiltValueField(wireName: r'index')
  int get index;

  /// Unit length.
  @BuiltValueField(wireName: r'embedding')
  BuiltList<num> get embedding;

  EmbedResponseDataInner._();

  factory EmbedResponseDataInner([void updates(EmbedResponseDataInnerBuilder b)]) = _$EmbedResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmbedResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmbedResponseDataInner> get serializer => _$EmbedResponseDataInnerSerializer();
}

class _$EmbedResponseDataInnerSerializer implements PrimitiveSerializer<EmbedResponseDataInner> {
  @override
  final Iterable<Type> types = const [EmbedResponseDataInner, _$EmbedResponseDataInner];

  @override
  final String wireName = r'EmbedResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmbedResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(EmbedResponseDataInnerObjectEnum),
    );
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'embedding';
    yield serializers.serialize(
      object.embedding,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmbedResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmbedResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmbedResponseDataInnerObjectEnum),
          ) as EmbedResponseDataInnerObjectEnum;
          result.object = valueDes;
          break;
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'embedding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.embedding.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmbedResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmbedResponseDataInnerBuilder();
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


class EmbedResponseDataInnerObjectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'embedding')
  static const EmbedResponseDataInnerObjectEnum embedding = _$embedResponseDataInnerObjectEnum_embedding;

  static Serializer<EmbedResponseDataInnerObjectEnum> get serializer => _$embedResponseDataInnerObjectEnumSerializer;

  const EmbedResponseDataInnerObjectEnum._(String name): super(name);

  static BuiltSet<EmbedResponseDataInnerObjectEnum> get values => _$embedResponseDataInnerObjectEnumValues;
  static EmbedResponseDataInnerObjectEnum valueOf(String name) => _$embedResponseDataInnerObjectEnumValueOf(name);
}

