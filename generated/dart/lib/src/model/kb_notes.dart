//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_note.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_notes.g.dart';

/// KbNotes
///
/// Properties:
/// * [notes] 
@BuiltValue()
abstract class KbNotes implements Built<KbNotes, KbNotesBuilder> {
  @BuiltValueField(wireName: r'notes')
  BuiltList<KbNote> get notes;

  KbNotes._();

  factory KbNotes([void updates(KbNotesBuilder b)]) = _$KbNotes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbNotesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbNotes> get serializer => _$KbNotesSerializer();
}

class _$KbNotesSerializer implements PrimitiveSerializer<KbNotes> {
  @override
  final Iterable<Type> types = const [KbNotes, _$KbNotes];

  @override
  final String wireName = r'KbNotes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbNotes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(BuiltList, [FullType(KbNote)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbNotes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbNotesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbNote)]),
          ) as BuiltList<KbNote>;
          result.notes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbNotes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbNotesBuilder();
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


