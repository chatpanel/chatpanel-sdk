//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fusion_list_kinds_value.g.dart';

/// FusionListKindsValue
///
/// Properties:
/// * [id] 
/// * [label] 
/// * [gain] 
/// * [what] 
/// * [for_] 
@BuiltValue()
abstract class FusionListKindsValue implements Built<FusionListKindsValue, FusionListKindsValueBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'gain')
  FusionListKindsValueGainEnum? get gain;
  // enum gainEnum {  recall,  speed,  reliability,  };

  @BuiltValueField(wireName: r'what')
  String? get what;

  @BuiltValueField(wireName: r'for')
  BuiltList<String>? get for_;

  FusionListKindsValue._();

  factory FusionListKindsValue([void updates(FusionListKindsValueBuilder b)]) = _$FusionListKindsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FusionListKindsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FusionListKindsValue> get serializer => _$FusionListKindsValueSerializer();
}

class _$FusionListKindsValueSerializer implements PrimitiveSerializer<FusionListKindsValue> {
  @override
  final Iterable<Type> types = const [FusionListKindsValue, _$FusionListKindsValue];

  @override
  final String wireName = r'FusionListKindsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FusionListKindsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.gain != null) {
      yield r'gain';
      yield serializers.serialize(
        object.gain,
        specifiedType: const FullType(FusionListKindsValueGainEnum),
      );
    }
    if (object.what != null) {
      yield r'what';
      yield serializers.serialize(
        object.what,
        specifiedType: const FullType(String),
      );
    }
    if (object.for_ != null) {
      yield r'for';
      yield serializers.serialize(
        object.for_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FusionListKindsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FusionListKindsValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'gain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FusionListKindsValueGainEnum),
          ) as FusionListKindsValueGainEnum?;
          if (valueDes == null) continue;
          result.gain = valueDes;
          break;
        case r'what':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.what = valueDes;
          break;
        case r'for':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.for_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FusionListKindsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FusionListKindsValueBuilder();
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


class FusionListKindsValueGainEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'recall')
  static const FusionListKindsValueGainEnum recall = _$fusionListKindsValueGainEnum_recall;
  @BuiltValueEnumConst(wireName: r'speed')
  static const FusionListKindsValueGainEnum speed = _$fusionListKindsValueGainEnum_speed;
  @BuiltValueEnumConst(wireName: r'reliability')
  static const FusionListKindsValueGainEnum reliability = _$fusionListKindsValueGainEnum_reliability;

  static Serializer<FusionListKindsValueGainEnum> get serializer => _$fusionListKindsValueGainEnumSerializer;

  const FusionListKindsValueGainEnum._(String name): super(name);

  static BuiltSet<FusionListKindsValueGainEnum> get values => _$fusionListKindsValueGainEnumValues;
  static FusionListKindsValueGainEnum valueOf(String name) => _$fusionListKindsValueGainEnumValueOf(name);
}

