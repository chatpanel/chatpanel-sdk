//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/research_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_follow_up.g.dart';

/// What a follow-up continues — the `next` of the previous answer, passed back as `previous`.
///
/// Properties:
/// * [plan] 
/// * [top] - The record the answer pointed at.
/// * [answer] - What the answer said (a date in it bounds \"even later\").
@BuiltValue()
abstract class ResearchFollowUp implements Built<ResearchFollowUp, ResearchFollowUpBuilder> {
  @BuiltValueField(wireName: r'plan')
  ResearchPlan get plan;

  /// The record the answer pointed at.
  @BuiltValueField(wireName: r'top')
  String? get top;

  /// What the answer said (a date in it bounds \"even later\").
  @BuiltValueField(wireName: r'answer')
  String? get answer;

  ResearchFollowUp._();

  factory ResearchFollowUp([void updates(ResearchFollowUpBuilder b)]) = _$ResearchFollowUp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchFollowUpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchFollowUp> get serializer => _$ResearchFollowUpSerializer();
}

class _$ResearchFollowUpSerializer implements PrimitiveSerializer<ResearchFollowUp> {
  @override
  final Iterable<Type> types = const [ResearchFollowUp, _$ResearchFollowUp];

  @override
  final String wireName = r'ResearchFollowUp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchFollowUp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plan';
    yield serializers.serialize(
      object.plan,
      specifiedType: const FullType(ResearchPlan),
    );
    if (object.top != null) {
      yield r'top';
      yield serializers.serialize(
        object.top,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.answer != null) {
      yield r'answer';
      yield serializers.serialize(
        object.answer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchFollowUp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchFollowUpBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResearchPlan),
          ) as ResearchPlan;
          result.plan = valueDes;
          break;
        case r'top':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.top = valueDes;
          break;
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.answer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchFollowUp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchFollowUpBuilder();
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


