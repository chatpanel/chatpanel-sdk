//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_plan.g.dart';

/// How the question was framed — the typed plan the store was queried with.
///
/// Properties:
/// * [intent] 
/// * [kind] - meeting, note, chat — or empty for every kind.
/// * [names] 
/// * [terms] 
/// * [sort] 
/// * [limit] 
/// * [since] 
/// * [after] 
/// * [before] 
/// * [group] - person, month, week, day — or empty.
/// * [readFull] 
/// * [followUp] 
/// * [target] 
@BuiltValue()
abstract class ResearchPlan implements Built<ResearchPlan, ResearchPlanBuilder> {
  @BuiltValueField(wireName: r'intent')
  ResearchPlanIntentEnum? get intent;
  // enum intentEnum {  find,  latest,  earliest,  count,  group,  people,  list,  detail,  };

  /// meeting, note, chat — or empty for every kind.
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'names')
  BuiltList<String>? get names;

  @BuiltValueField(wireName: r'terms')
  BuiltList<String>? get terms;

  @BuiltValueField(wireName: r'sort')
  ResearchPlanSortEnum? get sort;
  // enum sortEnum {  relevance,  newest,  oldest,  };

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'since')
  int? get since;

  @BuiltValueField(wireName: r'after')
  int? get after;

  @BuiltValueField(wireName: r'before')
  int? get before;

  /// person, month, week, day — or empty.
  @BuiltValueField(wireName: r'group')
  String? get group;

  @BuiltValueField(wireName: r'readFull')
  bool? get readFull;

  @BuiltValueField(wireName: r'followUp')
  bool? get followUp;

  @BuiltValueField(wireName: r'target')
  String? get target;

  ResearchPlan._();

  factory ResearchPlan([void updates(ResearchPlanBuilder b)]) = _$ResearchPlan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchPlanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchPlan> get serializer => _$ResearchPlanSerializer();
}

class _$ResearchPlanSerializer implements PrimitiveSerializer<ResearchPlan> {
  @override
  final Iterable<Type> types = const [ResearchPlan, _$ResearchPlan];

  @override
  final String wireName = r'ResearchPlan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.intent != null) {
      yield r'intent';
      yield serializers.serialize(
        object.intent,
        specifiedType: const FullType(ResearchPlanIntentEnum),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.names != null) {
      yield r'names';
      yield serializers.serialize(
        object.names,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sort != null) {
      yield r'sort';
      yield serializers.serialize(
        object.sort,
        specifiedType: const FullType(ResearchPlanSortEnum),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType(int),
      );
    }
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType(int),
      );
    }
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType(int),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    if (object.readFull != null) {
      yield r'readFull';
      yield serializers.serialize(
        object.readFull,
        specifiedType: const FullType(bool),
      );
    }
    if (object.followUp != null) {
      yield r'followUp';
      yield serializers.serialize(
        object.followUp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.target != null) {
      yield r'target';
      yield serializers.serialize(
        object.target,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchPlanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'intent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResearchPlanIntentEnum),
          ) as ResearchPlanIntentEnum?;
          if (valueDes == null) continue;
          result.intent = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.names.replace(valueDes);
          break;
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.terms.replace(valueDes);
          break;
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResearchPlanSortEnum),
          ) as ResearchPlanSortEnum?;
          if (valueDes == null) continue;
          result.sort = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.after = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.group = valueDes;
          break;
        case r'readFull':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.readFull = valueDes;
          break;
        case r'followUp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.followUp = valueDes;
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.target = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchPlan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchPlanBuilder();
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


class ResearchPlanIntentEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'find')
  static const ResearchPlanIntentEnum find = _$researchPlanIntentEnum_find;
  @BuiltValueEnumConst(wireName: r'latest')
  static const ResearchPlanIntentEnum latest = _$researchPlanIntentEnum_latest;
  @BuiltValueEnumConst(wireName: r'earliest')
  static const ResearchPlanIntentEnum earliest = _$researchPlanIntentEnum_earliest;
  @BuiltValueEnumConst(wireName: r'count')
  static const ResearchPlanIntentEnum count = _$researchPlanIntentEnum_count;
  @BuiltValueEnumConst(wireName: r'group')
  static const ResearchPlanIntentEnum group = _$researchPlanIntentEnum_group;
  @BuiltValueEnumConst(wireName: r'people')
  static const ResearchPlanIntentEnum people = _$researchPlanIntentEnum_people;
  @BuiltValueEnumConst(wireName: r'list')
  static const ResearchPlanIntentEnum list = _$researchPlanIntentEnum_list;
  @BuiltValueEnumConst(wireName: r'detail')
  static const ResearchPlanIntentEnum detail = _$researchPlanIntentEnum_detail;

  static Serializer<ResearchPlanIntentEnum> get serializer => _$researchPlanIntentEnumSerializer;

  const ResearchPlanIntentEnum._(String name): super(name);

  static BuiltSet<ResearchPlanIntentEnum> get values => _$researchPlanIntentEnumValues;
  static ResearchPlanIntentEnum valueOf(String name) => _$researchPlanIntentEnumValueOf(name);
}

class ResearchPlanSortEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'relevance')
  static const ResearchPlanSortEnum relevance = _$researchPlanSortEnum_relevance;
  @BuiltValueEnumConst(wireName: r'newest')
  static const ResearchPlanSortEnum newest = _$researchPlanSortEnum_newest;
  @BuiltValueEnumConst(wireName: r'oldest')
  static const ResearchPlanSortEnum oldest = _$researchPlanSortEnum_oldest;

  static Serializer<ResearchPlanSortEnum> get serializer => _$researchPlanSortEnumSerializer;

  const ResearchPlanSortEnum._(String name): super(name);

  static BuiltSet<ResearchPlanSortEnum> get values => _$researchPlanSortEnumValues;
  static ResearchPlanSortEnum valueOf(String name) => _$researchPlanSortEnumValueOf(name);
}

