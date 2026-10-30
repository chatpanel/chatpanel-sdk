//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_note_status_request.g.dart';

/// KbNoteStatusRequest
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class KbNoteStatusRequest implements Built<KbNoteStatusRequest, KbNoteStatusRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  KbNoteStatusRequestStatusEnum get status;
  // enum statusEnum {  proposed,  accepted,  removed,  };

  KbNoteStatusRequest._();

  factory KbNoteStatusRequest([void updates(KbNoteStatusRequestBuilder b)]) = _$KbNoteStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbNoteStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbNoteStatusRequest> get serializer => _$KbNoteStatusRequestSerializer();
}

class _$KbNoteStatusRequestSerializer implements PrimitiveSerializer<KbNoteStatusRequest> {
  @override
  final Iterable<Type> types = const [KbNoteStatusRequest, _$KbNoteStatusRequest];

  @override
  final String wireName = r'KbNoteStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbNoteStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(KbNoteStatusRequestStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbNoteStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbNoteStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbNoteStatusRequestStatusEnum),
          ) as KbNoteStatusRequestStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbNoteStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbNoteStatusRequestBuilder();
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


class KbNoteStatusRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'proposed')
  static const KbNoteStatusRequestStatusEnum proposed = _$kbNoteStatusRequestStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const KbNoteStatusRequestStatusEnum accepted = _$kbNoteStatusRequestStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'removed')
  static const KbNoteStatusRequestStatusEnum removed = _$kbNoteStatusRequestStatusEnum_removed;

  static Serializer<KbNoteStatusRequestStatusEnum> get serializer => _$kbNoteStatusRequestStatusEnumSerializer;

  const KbNoteStatusRequestStatusEnum._(String name): super(name);

  static BuiltSet<KbNoteStatusRequestStatusEnum> get values => _$kbNoteStatusRequestStatusEnumValues;
  static KbNoteStatusRequestStatusEnum valueOf(String name) => _$kbNoteStatusRequestStatusEnumValueOf(name);
}

