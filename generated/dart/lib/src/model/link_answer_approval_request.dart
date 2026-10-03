//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_answer_approval_request.g.dart';

/// LinkAnswerApprovalRequest
///
/// Properties:
/// * [decision] 
@BuiltValue()
abstract class LinkAnswerApprovalRequest implements Built<LinkAnswerApprovalRequest, LinkAnswerApprovalRequestBuilder> {
  @BuiltValueField(wireName: r'decision')
  LinkAnswerApprovalRequestDecisionEnum get decision;
  // enum decisionEnum {  allow,  allow_action,  allow_all,  deny,  };

  LinkAnswerApprovalRequest._();

  factory LinkAnswerApprovalRequest([void updates(LinkAnswerApprovalRequestBuilder b)]) = _$LinkAnswerApprovalRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkAnswerApprovalRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkAnswerApprovalRequest> get serializer => _$LinkAnswerApprovalRequestSerializer();
}

class _$LinkAnswerApprovalRequestSerializer implements PrimitiveSerializer<LinkAnswerApprovalRequest> {
  @override
  final Iterable<Type> types = const [LinkAnswerApprovalRequest, _$LinkAnswerApprovalRequest];

  @override
  final String wireName = r'LinkAnswerApprovalRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkAnswerApprovalRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'decision';
    yield serializers.serialize(
      object.decision,
      specifiedType: const FullType(LinkAnswerApprovalRequestDecisionEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkAnswerApprovalRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkAnswerApprovalRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'decision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LinkAnswerApprovalRequestDecisionEnum),
          ) as LinkAnswerApprovalRequestDecisionEnum;
          result.decision = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkAnswerApprovalRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkAnswerApprovalRequestBuilder();
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


class LinkAnswerApprovalRequestDecisionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'allow')
  static const LinkAnswerApprovalRequestDecisionEnum allow = _$linkAnswerApprovalRequestDecisionEnum_allow;
  @BuiltValueEnumConst(wireName: r'allow_action')
  static const LinkAnswerApprovalRequestDecisionEnum allowAction = _$linkAnswerApprovalRequestDecisionEnum_allowAction;
  @BuiltValueEnumConst(wireName: r'allow_all')
  static const LinkAnswerApprovalRequestDecisionEnum allowAll = _$linkAnswerApprovalRequestDecisionEnum_allowAll;
  @BuiltValueEnumConst(wireName: r'deny')
  static const LinkAnswerApprovalRequestDecisionEnum deny = _$linkAnswerApprovalRequestDecisionEnum_deny;

  static Serializer<LinkAnswerApprovalRequestDecisionEnum> get serializer => _$linkAnswerApprovalRequestDecisionEnumSerializer;

  const LinkAnswerApprovalRequestDecisionEnum._(String name): super(name);

  static BuiltSet<LinkAnswerApprovalRequestDecisionEnum> get values => _$linkAnswerApprovalRequestDecisionEnumValues;
  static LinkAnswerApprovalRequestDecisionEnum valueOf(String name) => _$linkAnswerApprovalRequestDecisionEnumValueOf(name);
}

