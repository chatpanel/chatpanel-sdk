//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/research_plan.dart';
import 'package:chatpanel/src/model/research_response_read_inner.dart';
import 'package:chatpanel/src/model/research_response_attachment.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/research_response_groups_inner.dart';
import 'package:chatpanel/src/model/research_response_rows_inner.dart';
import 'package:chatpanel/src/model/research_follow_up.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_response.g.dart';

/// ResearchResponse
///
/// Properties:
/// * [ok] 
/// * [question] 
/// * [plan] 
/// * [how] - How the store was searched, in words.
/// * [framedBy] 
/// * [count] - Every match in the store, not the rows returned.
/// * [rows] 
/// * [groups] 
/// * [read] 
/// * [memory] 
/// * [rounds] 
/// * [verdict] 
/// * [ms] 
/// * [next] 
/// * [attachment] 
/// * [size] 
/// * [newest] 
@BuiltValue()
abstract class ResearchResponse implements Built<ResearchResponse, ResearchResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'question')
  String? get question;

  @BuiltValueField(wireName: r'plan')
  ResearchPlan get plan;

  /// How the store was searched, in words.
  @BuiltValueField(wireName: r'how')
  String get how;

  @BuiltValueField(wireName: r'framedBy')
  ResearchResponseFramedByEnum? get framedBy;
  // enum framedByEnum {  rules,  model,  };

  /// Every match in the store, not the rows returned.
  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'rows')
  BuiltList<ResearchResponseRowsInner> get rows;

  @BuiltValueField(wireName: r'groups')
  BuiltList<ResearchResponseGroupsInner>? get groups;

  @BuiltValueField(wireName: r'read')
  BuiltList<ResearchResponseReadInner> get read;

  @BuiltValueField(wireName: r'memory')
  BuiltList<String>? get memory;

  @BuiltValueField(wireName: r'rounds')
  int? get rounds;

  @BuiltValueField(wireName: r'verdict')
  String? get verdict;

  @BuiltValueField(wireName: r'ms')
  int? get ms;

  @BuiltValueField(wireName: r'next')
  ResearchFollowUp get next;

  @BuiltValueField(wireName: r'attachment')
  ResearchResponseAttachment? get attachment;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'newest')
  int? get newest;

  ResearchResponse._();

  factory ResearchResponse([void updates(ResearchResponseBuilder b)]) = _$ResearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchResponse> get serializer => _$ResearchResponseSerializer();
}

class _$ResearchResponseSerializer implements PrimitiveSerializer<ResearchResponse> {
  @override
  final Iterable<Type> types = const [ResearchResponse, _$ResearchResponse];

  @override
  final String wireName = r'ResearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(String),
      );
    }
    yield r'plan';
    yield serializers.serialize(
      object.plan,
      specifiedType: const FullType(ResearchPlan),
    );
    yield r'how';
    yield serializers.serialize(
      object.how,
      specifiedType: const FullType(String),
    );
    if (object.framedBy != null) {
      yield r'framedBy';
      yield serializers.serialize(
        object.framedBy,
        specifiedType: const FullType(ResearchResponseFramedByEnum),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(ResearchResponseRowsInner)]),
    );
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ResearchResponseGroupsInner)]),
      );
    }
    yield r'read';
    yield serializers.serialize(
      object.read,
      specifiedType: const FullType(BuiltList, [FullType(ResearchResponseReadInner)]),
    );
    if (object.memory != null) {
      yield r'memory';
      yield serializers.serialize(
        object.memory,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rounds != null) {
      yield r'rounds';
      yield serializers.serialize(
        object.rounds,
        specifiedType: const FullType(int),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ms != null) {
      yield r'ms';
      yield serializers.serialize(
        object.ms,
        specifiedType: const FullType(int),
      );
    }
    yield r'next';
    yield serializers.serialize(
      object.next,
      specifiedType: const FullType(ResearchFollowUp),
    );
    if (object.attachment != null) {
      yield r'attachment';
      yield serializers.serialize(
        object.attachment,
        specifiedType: const FullType.nullable(ResearchResponseAttachment),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.question = valueDes;
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResearchPlan),
          ) as ResearchPlan;
          result.plan = valueDes;
          break;
        case r'how':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.how = valueDes;
          break;
        case r'framedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResearchResponseFramedByEnum),
          ) as ResearchResponseFramedByEnum?;
          if (valueDes == null) continue;
          result.framedBy = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ResearchResponseRowsInner)]),
          ) as BuiltList<ResearchResponseRowsInner>;
          result.rows.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ResearchResponseGroupsInner)]),
          ) as BuiltList<ResearchResponseGroupsInner>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ResearchResponseReadInner)]),
          ) as BuiltList<ResearchResponseReadInner>;
          result.read.replace(valueDes);
          break;
        case r'memory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.memory.replace(valueDes);
          break;
        case r'rounds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rounds = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ms = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResearchFollowUp),
          ) as ResearchFollowUp;
          result.next.replace(valueDes);
          break;
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResearchResponseAttachment),
          ) as ResearchResponseAttachment?;
          if (valueDes == null) continue;
          result.attachment.replace(valueDes);
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchResponseBuilder();
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


class ResearchResponseFramedByEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'rules')
  static const ResearchResponseFramedByEnum rules = _$researchResponseFramedByEnum_rules;
  @BuiltValueEnumConst(wireName: r'model')
  static const ResearchResponseFramedByEnum model = _$researchResponseFramedByEnum_model;

  static Serializer<ResearchResponseFramedByEnum> get serializer => _$researchResponseFramedByEnumSerializer;

  const ResearchResponseFramedByEnum._(String name): super(name);

  static BuiltSet<ResearchResponseFramedByEnum> get values => _$researchResponseFramedByEnumValues;
  static ResearchResponseFramedByEnum valueOf(String name) => _$researchResponseFramedByEnumValueOf(name);
}

