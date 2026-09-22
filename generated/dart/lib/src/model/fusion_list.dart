//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/fusion_list_fusions_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/fusion_list_kinds_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fusion_list.g.dart';

/// FusionList
///
/// Properties:
/// * [kinds] 
/// * [fusions] 
@BuiltValue()
abstract class FusionList implements Built<FusionList, FusionListBuilder> {
  @BuiltValueField(wireName: r'kinds')
  BuiltMap<String, FusionListKindsValue> get kinds;

  @BuiltValueField(wireName: r'fusions')
  BuiltList<FusionListFusionsInner> get fusions;

  FusionList._();

  factory FusionList([void updates(FusionListBuilder b)]) = _$FusionList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FusionListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FusionList> get serializer => _$FusionListSerializer();
}

class _$FusionListSerializer implements PrimitiveSerializer<FusionList> {
  @override
  final Iterable<Type> types = const [FusionList, _$FusionList];

  @override
  final String wireName = r'FusionList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FusionList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(FusionListKindsValue)]),
    );
    yield r'fusions';
    yield serializers.serialize(
      object.fusions,
      specifiedType: const FullType(BuiltList, [FullType(FusionListFusionsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FusionList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FusionListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(FusionListKindsValue)]),
          ) as BuiltMap<String, FusionListKindsValue>;
          result.kinds.replace(valueDes);
          break;
        case r'fusions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FusionListFusionsInner)]),
          ) as BuiltList<FusionListFusionsInner>;
          result.fusions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FusionList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FusionListBuilder();
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


