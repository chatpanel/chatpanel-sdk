//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/fusion_list_fusions_inner_members_inner_one_of.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'fusion_list_fusions_inner_members_inner.g.dart';

/// FusionListFusionsInnerMembersInner
///
/// Properties:
/// * [id] 
/// * [role] 
@BuiltValue()
abstract class FusionListFusionsInnerMembersInner implements Built<FusionListFusionsInnerMembersInner, FusionListFusionsInnerMembersInnerBuilder> {
  /// One Of [FusionListFusionsInnerMembersInnerOneOf], [String]
  OneOf get oneOf;

  FusionListFusionsInnerMembersInner._();

  factory FusionListFusionsInnerMembersInner([void updates(FusionListFusionsInnerMembersInnerBuilder b)]) = _$FusionListFusionsInnerMembersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FusionListFusionsInnerMembersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FusionListFusionsInnerMembersInner> get serializer => _$FusionListFusionsInnerMembersInnerSerializer();
}

class _$FusionListFusionsInnerMembersInnerSerializer implements PrimitiveSerializer<FusionListFusionsInnerMembersInner> {
  @override
  final Iterable<Type> types = const [FusionListFusionsInnerMembersInner, _$FusionListFusionsInnerMembersInner];

  @override
  final String wireName = r'FusionListFusionsInnerMembersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FusionListFusionsInnerMembersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    FusionListFusionsInnerMembersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FusionListFusionsInnerMembersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FusionListFusionsInnerMembersInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(FusionListFusionsInnerMembersInnerOneOf), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


class FusionListFusionsInnerMembersInnerRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'target')
  static const FusionListFusionsInnerMembersInnerRoleEnum target = _$fusionListFusionsInnerMembersInnerRoleEnum_target;
  @BuiltValueEnumConst(wireName: r'draft')
  static const FusionListFusionsInnerMembersInnerRoleEnum draft = _$fusionListFusionsInnerMembersInnerRoleEnum_draft;

  static Serializer<FusionListFusionsInnerMembersInnerRoleEnum> get serializer => _$fusionListFusionsInnerMembersInnerRoleEnumSerializer;

  const FusionListFusionsInnerMembersInnerRoleEnum._(String name): super(name);

  static BuiltSet<FusionListFusionsInnerMembersInnerRoleEnum> get values => _$fusionListFusionsInnerMembersInnerRoleEnumValues;
  static FusionListFusionsInnerMembersInnerRoleEnum valueOf(String name) => _$fusionListFusionsInnerMembersInnerRoleEnumValueOf(name);
}

