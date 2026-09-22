//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transcription_segments_inner.g.dart';

/// TranscriptionSegmentsInner
///
/// Properties:
/// * [id] 
/// * [start] 
/// * [end] 
/// * [text] 
/// * [speaker] - With diarize=true.
@BuiltValue()
abstract class TranscriptionSegmentsInner implements Built<TranscriptionSegmentsInner, TranscriptionSegmentsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'start')
  num get start;

  @BuiltValueField(wireName: r'end')
  num get end;

  @BuiltValueField(wireName: r'text')
  String get text;

  /// With diarize=true.
  @BuiltValueField(wireName: r'speaker')
  String? get speaker;

  TranscriptionSegmentsInner._();

  factory TranscriptionSegmentsInner([void updates(TranscriptionSegmentsInnerBuilder b)]) = _$TranscriptionSegmentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranscriptionSegmentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranscriptionSegmentsInner> get serializer => _$TranscriptionSegmentsInnerSerializer();
}

class _$TranscriptionSegmentsInnerSerializer implements PrimitiveSerializer<TranscriptionSegmentsInner> {
  @override
  final Iterable<Type> types = const [TranscriptionSegmentsInner, _$TranscriptionSegmentsInner];

  @override
  final String wireName = r'TranscriptionSegmentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranscriptionSegmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'start';
    yield serializers.serialize(
      object.start,
      specifiedType: const FullType(num),
    );
    yield r'end';
    yield serializers.serialize(
      object.end,
      specifiedType: const FullType(num),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.speaker != null) {
      yield r'speaker';
      yield serializers.serialize(
        object.speaker,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TranscriptionSegmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TranscriptionSegmentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.end = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'speaker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.speaker = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranscriptionSegmentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranscriptionSegmentsInnerBuilder();
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


