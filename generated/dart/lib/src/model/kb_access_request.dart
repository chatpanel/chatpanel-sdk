//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_access_request_agents.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_access_request.g.dart';

/// KbAccessRequest
///
/// Properties:
/// * [agents] 
@BuiltValue()
abstract class KbAccessRequest implements Built<KbAccessRequest, KbAccessRequestBuilder> {
  @BuiltValueField(wireName: r'agents')
  KbAccessRequestAgents get agents;

  KbAccessRequest._();

  factory KbAccessRequest([void updates(KbAccessRequestBuilder b)]) = _$KbAccessRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAccessRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAccessRequest> get serializer => _$KbAccessRequestSerializer();
}

class _$KbAccessRequestSerializer implements PrimitiveSerializer<KbAccessRequest> {
  @override
  final Iterable<Type> types = const [KbAccessRequest, _$KbAccessRequest];

  @override
  final String wireName = r'KbAccessRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'agents';
    yield serializers.serialize(
      object.agents,
      specifiedType: const FullType(KbAccessRequestAgents),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAccessRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbAccessRequestAgents),
          ) as KbAccessRequestAgents;
          result.agents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbAccessRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAccessRequestBuilder();
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


