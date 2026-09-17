//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_decide_request.g.dart';

/// TeamsDecideRequest
///
/// Properties:
/// * [postId] 
/// * [status] 
/// * [by] 
@BuiltValue()
abstract class TeamsDecideRequest implements Built<TeamsDecideRequest, TeamsDecideRequestBuilder> {
  @BuiltValueField(wireName: r'postId')
  String get postId;

  @BuiltValueField(wireName: r'status')
  TeamsDecideRequestStatusEnum get status;
  // enum statusEnum {  approved,  rejected,  };

  @BuiltValueField(wireName: r'by')
  String? get by;

  TeamsDecideRequest._();

  factory TeamsDecideRequest([void updates(TeamsDecideRequestBuilder b)]) = _$TeamsDecideRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsDecideRequestBuilder b) => b
      ..by = 'person';

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsDecideRequest> get serializer => _$TeamsDecideRequestSerializer();
}

class _$TeamsDecideRequestSerializer implements PrimitiveSerializer<TeamsDecideRequest> {
  @override
  final Iterable<Type> types = const [TeamsDecideRequest, _$TeamsDecideRequest];

  @override
  final String wireName = r'TeamsDecideRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsDecideRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'postId';
    yield serializers.serialize(
      object.postId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TeamsDecideRequestStatusEnum),
    );
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsDecideRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsDecideRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'postId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TeamsDecideRequestStatusEnum),
          ) as TeamsDecideRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsDecideRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsDecideRequestBuilder();
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


class TeamsDecideRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'approved')
  static const TeamsDecideRequestStatusEnum approved = _$teamsDecideRequestStatusEnum_approved;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const TeamsDecideRequestStatusEnum rejected = _$teamsDecideRequestStatusEnum_rejected;

  static Serializer<TeamsDecideRequestStatusEnum> get serializer => _$teamsDecideRequestStatusEnumSerializer;

  const TeamsDecideRequestStatusEnum._(String name): super(name);

  static BuiltSet<TeamsDecideRequestStatusEnum> get values => _$teamsDecideRequestStatusEnumValues;
  static TeamsDecideRequestStatusEnum valueOf(String name) => _$teamsDecideRequestStatusEnumValueOf(name);
}

