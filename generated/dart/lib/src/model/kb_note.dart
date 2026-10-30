//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_note.g.dart';

/// KbNote
///
/// Properties:
/// * [id] 
/// * [text] 
/// * [cites] 
/// * [by] 
/// * [status] 
/// * [at] 
@BuiltValue()
abstract class KbNote implements Built<KbNote, KbNoteBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'cites')
  BuiltList<String>? get cites;

  @BuiltValueField(wireName: r'by')
  String? get by;

  @BuiltValueField(wireName: r'status')
  KbNoteStatusEnum get status;
  // enum statusEnum {  proposed,  accepted,  };

  @BuiltValueField(wireName: r'at')
  int get at;

  KbNote._();

  factory KbNote([void updates(KbNoteBuilder b)]) = _$KbNote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbNoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbNote> get serializer => _$KbNoteSerializer();
}

class _$KbNoteSerializer implements PrimitiveSerializer<KbNote> {
  @override
  final Iterable<Type> types = const [KbNote, _$KbNote];

  @override
  final String wireName = r'KbNote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbNote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(KbNoteStatusEnum),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbNote object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbNoteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
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
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbNoteStatusEnum),
          ) as KbNoteStatusEnum;
          result.status = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbNote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbNoteBuilder();
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


class KbNoteStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'proposed')
  static const KbNoteStatusEnum proposed = _$kbNoteStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const KbNoteStatusEnum accepted = _$kbNoteStatusEnum_accepted;

  static Serializer<KbNoteStatusEnum> get serializer => _$kbNoteStatusEnumSerializer;

  const KbNoteStatusEnum._(String name): super(name);

  static BuiltSet<KbNoteStatusEnum> get values => _$kbNoteStatusEnumValues;
  static KbNoteStatusEnum valueOf(String name) => _$kbNoteStatusEnumValueOf(name);
}

