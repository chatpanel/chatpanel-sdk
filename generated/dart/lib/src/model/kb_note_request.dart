//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_note_request.g.dart';

/// KbNoteRequest
///
/// Properties:
/// * [text] 
/// * [cites] 
/// * [status] - `accepted` is honoured from a caller with the token only.
/// * [by] 
@BuiltValue()
abstract class KbNoteRequest implements Built<KbNoteRequest, KbNoteRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'cites')
  BuiltList<String>? get cites;

  /// `accepted` is honoured from a caller with the token only.
  @BuiltValueField(wireName: r'status')
  KbNoteRequestStatusEnum? get status;
  // enum statusEnum {  proposed,  accepted,  };

  @BuiltValueField(wireName: r'by')
  String? get by;

  KbNoteRequest._();

  factory KbNoteRequest([void updates(KbNoteRequestBuilder b)]) = _$KbNoteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbNoteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbNoteRequest> get serializer => _$KbNoteRequestSerializer();
}

class _$KbNoteRequestSerializer implements PrimitiveSerializer<KbNoteRequest> {
  @override
  final Iterable<Type> types = const [KbNoteRequest, _$KbNoteRequest];

  @override
  final String wireName = r'KbNoteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbNoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.cites != null) {
      yield r'cites';
      yield serializers.serialize(
        object.cites,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(KbNoteRequestStatusEnum),
      );
    }
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
    KbNoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbNoteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'cites':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.cites.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbNoteRequestStatusEnum),
          ) as KbNoteRequestStatusEnum?;
          if (valueDes == null) continue;
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
  KbNoteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbNoteRequestBuilder();
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


/// `accepted` is honoured from a caller with the token only.
class KbNoteRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'proposed')
  static const KbNoteRequestStatusEnum proposed = _$kbNoteRequestStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const KbNoteRequestStatusEnum accepted = _$kbNoteRequestStatusEnum_accepted;

  static Serializer<KbNoteRequestStatusEnum> get serializer => _$kbNoteRequestStatusEnumSerializer;

  const KbNoteRequestStatusEnum._(String name): super(name);

  static BuiltSet<KbNoteRequestStatusEnum> get values => _$kbNoteRequestStatusEnumValues;
  static KbNoteRequestStatusEnum valueOf(String name) => _$kbNoteRequestStatusEnumValueOf(name);
}

