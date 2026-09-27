//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/research_response_read_inner_speakers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_response_read_inner.g.dart';

/// ResearchResponseReadInner
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [date] 
/// * [parts] 
/// * [of_] 
/// * [speakers] 
/// * [notes] 
@BuiltValue()
abstract class ResearchResponseReadInner implements Built<ResearchResponseReadInner, ResearchResponseReadInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'date')
  int? get date;

  @BuiltValueField(wireName: r'parts')
  int? get parts;

  @BuiltValueField(wireName: r'of')
  int? get of_;

  @BuiltValueField(wireName: r'speakers')
  BuiltList<ResearchResponseReadInnerSpeakersInner>? get speakers;

  @BuiltValueField(wireName: r'notes')
  BuiltList<String>? get notes;

  ResearchResponseReadInner._();

  factory ResearchResponseReadInner([void updates(ResearchResponseReadInnerBuilder b)]) = _$ResearchResponseReadInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchResponseReadInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchResponseReadInner> get serializer => _$ResearchResponseReadInnerSerializer();
}

class _$ResearchResponseReadInnerSerializer implements PrimitiveSerializer<ResearchResponseReadInner> {
  @override
  final Iterable<Type> types = const [ResearchResponseReadInner, _$ResearchResponseReadInner];

  @override
  final String wireName = r'ResearchResponseReadInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchResponseReadInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(int),
      );
    }
    if (object.parts != null) {
      yield r'parts';
      yield serializers.serialize(
        object.parts,
        specifiedType: const FullType(int),
      );
    }
    if (object.of_ != null) {
      yield r'of';
      yield serializers.serialize(
        object.of_,
        specifiedType: const FullType(int),
      );
    }
    if (object.speakers != null) {
      yield r'speakers';
      yield serializers.serialize(
        object.speakers,
        specifiedType: const FullType(BuiltList, [FullType(ResearchResponseReadInnerSpeakersInner)]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchResponseReadInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchResponseReadInnerBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'parts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.parts = valueDes;
          break;
        case r'of':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.of_ = valueDes;
          break;
        case r'speakers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ResearchResponseReadInnerSpeakersInner)]),
          ) as BuiltList<ResearchResponseReadInnerSpeakersInner>?;
          if (valueDes == null) continue;
          result.speakers.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
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
  ResearchResponseReadInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchResponseReadInnerBuilder();
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


