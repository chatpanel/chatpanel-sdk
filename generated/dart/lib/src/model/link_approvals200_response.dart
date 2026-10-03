//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/link_approval.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_approvals200_response.g.dart';

/// LinkApprovals200Response
///
/// Properties:
/// * [pending] 
@BuiltValue()
abstract class LinkApprovals200Response implements Built<LinkApprovals200Response, LinkApprovals200ResponseBuilder> {
  @BuiltValueField(wireName: r'pending')
  BuiltList<LinkApproval> get pending;

  LinkApprovals200Response._();

  factory LinkApprovals200Response([void updates(LinkApprovals200ResponseBuilder b)]) = _$LinkApprovals200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkApprovals200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkApprovals200Response> get serializer => _$LinkApprovals200ResponseSerializer();
}

class _$LinkApprovals200ResponseSerializer implements PrimitiveSerializer<LinkApprovals200Response> {
  @override
  final Iterable<Type> types = const [LinkApprovals200Response, _$LinkApprovals200Response];

  @override
  final String wireName = r'LinkApprovals200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkApprovals200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pending';
    yield serializers.serialize(
      object.pending,
      specifiedType: const FullType(BuiltList, [FullType(LinkApproval)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkApprovals200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkApprovals200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LinkApproval)]),
          ) as BuiltList<LinkApproval>;
          result.pending.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkApprovals200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkApprovals200ResponseBuilder();
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


