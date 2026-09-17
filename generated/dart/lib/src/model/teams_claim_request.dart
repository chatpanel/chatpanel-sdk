//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_claim_request.g.dart';

/// TeamsClaimRequest
///
/// Properties:
/// * [client] 
@BuiltValue()
abstract class TeamsClaimRequest implements Built<TeamsClaimRequest, TeamsClaimRequestBuilder> {
  @BuiltValueField(wireName: r'client')
  String get client;

  TeamsClaimRequest._();

  factory TeamsClaimRequest([void updates(TeamsClaimRequestBuilder b)]) = _$TeamsClaimRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsClaimRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsClaimRequest> get serializer => _$TeamsClaimRequestSerializer();
}

class _$TeamsClaimRequestSerializer implements PrimitiveSerializer<TeamsClaimRequest> {
  @override
  final Iterable<Type> types = const [TeamsClaimRequest, _$TeamsClaimRequest];

  @override
  final String wireName = r'TeamsClaimRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsClaimRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'client';
    yield serializers.serialize(
      object.client,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsClaimRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsClaimRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'client':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.client = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsClaimRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsClaimRequestBuilder();
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


