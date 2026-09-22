//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fusion_list_fusions_inner_members_inner_one_of.g.dart';

/// FusionListFusionsInnerMembersInnerOneOf
///
/// Properties:
/// * [id] 
/// * [role] 
@BuiltValue()
abstract class FusionListFusionsInnerMembersInnerOneOf implements Built<FusionListFusionsInnerMembersInnerOneOf, FusionListFusionsInnerMembersInnerOneOfBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'role')
  FusionListFusionsInnerMembersInnerOneOfRoleEnum? get role;
  // enum roleEnum {  target,  draft,  };

  FusionListFusionsInnerMembersInnerOneOf._();

  factory FusionListFusionsInnerMembersInnerOneOf([void updates(FusionListFusionsInnerMembersInnerOneOfBuilder b)]) = _$FusionListFusionsInnerMembersInnerOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FusionListFusionsInnerMembersInnerOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FusionListFusionsInnerMembersInnerOneOf> get serializer => _$FusionListFusionsInnerMembersInnerOneOfSerializer();
}

class _$FusionListFusionsInnerMembersInnerOneOfSerializer implements PrimitiveSerializer<FusionListFusionsInnerMembersInnerOneOf> {
  @override
  final Iterable<Type> types = const [FusionListFusionsInnerMembersInnerOneOf, _$FusionListFusionsInnerMembersInnerOneOf];

  @override
  final String wireName = r'FusionListFusionsInnerMembersInnerOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FusionListFusionsInnerMembersInnerOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(FusionListFusionsInnerMembersInnerOneOfRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FusionListFusionsInnerMembersInnerOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FusionListFusionsInnerMembersInnerOneOfBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FusionListFusionsInnerMembersInnerOneOfRoleEnum),
          ) as FusionListFusionsInnerMembersInnerOneOfRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FusionListFusionsInnerMembersInnerOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FusionListFusionsInnerMembersInnerOneOfBuilder();
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


class FusionListFusionsInnerMembersInnerOneOfRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'target')
  static const FusionListFusionsInnerMembersInnerOneOfRoleEnum target = _$fusionListFusionsInnerMembersInnerOneOfRoleEnum_target;
  @BuiltValueEnumConst(wireName: r'draft')
  static const FusionListFusionsInnerMembersInnerOneOfRoleEnum draft = _$fusionListFusionsInnerMembersInnerOneOfRoleEnum_draft;

  static Serializer<FusionListFusionsInnerMembersInnerOneOfRoleEnum> get serializer => _$fusionListFusionsInnerMembersInnerOneOfRoleEnumSerializer;

  const FusionListFusionsInnerMembersInnerOneOfRoleEnum._(String name): super(name);

  static BuiltSet<FusionListFusionsInnerMembersInnerOneOfRoleEnum> get values => _$fusionListFusionsInnerMembersInnerOneOfRoleEnumValues;
  static FusionListFusionsInnerMembersInnerOneOfRoleEnum valueOf(String name) => _$fusionListFusionsInnerMembersInnerOneOfRoleEnumValueOf(name);
}

