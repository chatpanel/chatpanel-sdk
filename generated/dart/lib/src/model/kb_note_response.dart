//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_note.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_note_response.g.dart';

/// KbNoteResponse
///
/// Properties:
/// * [note] 
/// * [removed] 
@BuiltValue()
abstract class KbNoteResponse implements Built<KbNoteResponse, KbNoteResponseBuilder> {
  @BuiltValueField(wireName: r'note')
  KbNote get note;

  @BuiltValueField(wireName: r'removed')
  bool? get removed;

  KbNoteResponse._();

  factory KbNoteResponse([void updates(KbNoteResponseBuilder b)]) = _$KbNoteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbNoteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbNoteResponse> get serializer => _$KbNoteResponseSerializer();
}

class _$KbNoteResponseSerializer implements PrimitiveSerializer<KbNoteResponse> {
  @override
  final Iterable<Type> types = const [KbNoteResponse, _$KbNoteResponse];

  @override
  final String wireName = r'KbNoteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbNoteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(KbNote),
    );
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbNoteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbNoteResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbNote),
          ) as KbNote;
          result.note.replace(valueDes);
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbNoteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbNoteResponseBuilder();
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


