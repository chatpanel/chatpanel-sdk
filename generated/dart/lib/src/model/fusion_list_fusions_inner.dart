//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/fusion_list_fusions_inner_members_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fusion_list_fusions_inner.g.dart';

/// FusionListFusionsInner
///
/// Properties:
/// * [id] 
/// * [kind] 
/// * [capability] 
/// * [label] 
/// * [members] 
/// * [derived] - Read from the gateway’s state, not composed.
/// * [source_] - For a derived one: ner, or the runtime service.
/// * [running] 
/// * [describe] - The fusion in a sentence.
@BuiltValue()
abstract class FusionListFusionsInner implements Built<FusionListFusionsInner, FusionListFusionsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  FusionListFusionsInnerKindEnum get kind;
  // enum kindEnum {  union,  draft,  fallback,  };

  @BuiltValueField(wireName: r'capability')
  String get capability;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'members')
  BuiltList<FusionListFusionsInnerMembersInner> get members;

  /// Read from the gateway’s state, not composed.
  @BuiltValueField(wireName: r'derived')
  bool? get derived;

  /// For a derived one: ner, or the runtime service.
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'running')
  bool? get running;

  /// The fusion in a sentence.
  @BuiltValueField(wireName: r'describe')
  String? get describe;

  FusionListFusionsInner._();

  factory FusionListFusionsInner([void updates(FusionListFusionsInnerBuilder b)]) = _$FusionListFusionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FusionListFusionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FusionListFusionsInner> get serializer => _$FusionListFusionsInnerSerializer();
}

class _$FusionListFusionsInnerSerializer implements PrimitiveSerializer<FusionListFusionsInner> {
  @override
  final Iterable<Type> types = const [FusionListFusionsInner, _$FusionListFusionsInner];

  @override
  final String wireName = r'FusionListFusionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FusionListFusionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(FusionListFusionsInnerKindEnum),
    );
    yield r'capability';
    yield serializers.serialize(
      object.capability,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(FusionListFusionsInnerMembersInner)]),
    );
    if (object.derived != null) {
      yield r'derived';
      yield serializers.serialize(
        object.derived,
        specifiedType: const FullType(bool),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.running != null) {
      yield r'running';
      yield serializers.serialize(
        object.running,
        specifiedType: const FullType(bool),
      );
    }
    if (object.describe != null) {
      yield r'describe';
      yield serializers.serialize(
        object.describe,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FusionListFusionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FusionListFusionsInnerBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FusionListFusionsInnerKindEnum),
          ) as FusionListFusionsInnerKindEnum;
          result.kind = valueDes;
          break;
        case r'capability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.capability = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FusionListFusionsInnerMembersInner)]),
          ) as BuiltList<FusionListFusionsInnerMembersInner>;
          result.members.replace(valueDes);
          break;
        case r'derived':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.derived = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'running':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.running = valueDes;
          break;
        case r'describe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.describe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FusionListFusionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FusionListFusionsInnerBuilder();
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


class FusionListFusionsInnerKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'union')
  static const FusionListFusionsInnerKindEnum union = _$fusionListFusionsInnerKindEnum_union;
  @BuiltValueEnumConst(wireName: r'draft')
  static const FusionListFusionsInnerKindEnum draft = _$fusionListFusionsInnerKindEnum_draft;
  @BuiltValueEnumConst(wireName: r'fallback')
  static const FusionListFusionsInnerKindEnum fallback = _$fusionListFusionsInnerKindEnum_fallback;

  static Serializer<FusionListFusionsInnerKindEnum> get serializer => _$fusionListFusionsInnerKindEnumSerializer;

  const FusionListFusionsInnerKindEnum._(String name): super(name);

  static BuiltSet<FusionListFusionsInnerKindEnum> get values => _$fusionListFusionsInnerKindEnumValues;
  static FusionListFusionsInnerKindEnum valueOf(String name) => _$fusionListFusionsInnerKindEnumValueOf(name);
}

