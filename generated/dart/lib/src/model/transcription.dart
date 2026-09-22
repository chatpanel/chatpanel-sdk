//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/transcription_segments_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transcription.g.dart';

/// Transcription
///
/// Properties:
/// * [text] 
/// * [task] - verbose_json only
/// * [language] - verbose_json only
/// * [duration] - Seconds of audio; verbose_json only.
/// * [provider] - Who transcribed; verbose_json only.
/// * [tookMs] 
/// * [segments] - verbose_json only.
@BuiltValue()
abstract class Transcription implements Built<Transcription, TranscriptionBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  /// verbose_json only
  @BuiltValueField(wireName: r'task')
  TranscriptionTaskEnum? get task;
  // enum taskEnum {  transcribe,  };

  /// verbose_json only
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Seconds of audio; verbose_json only.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// Who transcribed; verbose_json only.
  @BuiltValueField(wireName: r'provider')
  TranscriptionProviderEnum? get provider;
  // enum providerEnum {  embedded,  remote,  container,  };

  @BuiltValueField(wireName: r'took_ms')
  int? get tookMs;

  /// verbose_json only.
  @BuiltValueField(wireName: r'segments')
  BuiltList<TranscriptionSegmentsInner>? get segments;

  Transcription._();

  factory Transcription([void updates(TranscriptionBuilder b)]) = _$Transcription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Transcription> get serializer => _$TranscriptionSerializer();
}

class _$TranscriptionSerializer implements PrimitiveSerializer<Transcription> {
  @override
  final Iterable<Type> types = const [Transcription, _$Transcription];

  @override
  final String wireName = r'Transcription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Transcription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.task != null) {
      yield r'task';
      yield serializers.serialize(
        object.task,
        specifiedType: const FullType(TranscriptionTaskEnum),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(TranscriptionProviderEnum),
      );
    }
    if (object.tookMs != null) {
      yield r'took_ms';
      yield serializers.serialize(
        object.tookMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.segments != null) {
      yield r'segments';
      yield serializers.serialize(
        object.segments,
        specifiedType: const FullType(BuiltList, [FullType(TranscriptionSegmentsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Transcription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TranscriptionBuilder result,
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
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TranscriptionTaskEnum),
          ) as TranscriptionTaskEnum?;
          if (valueDes == null) continue;
          result.task = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TranscriptionProviderEnum),
          ) as TranscriptionProviderEnum?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'took_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tookMs = valueDes;
          break;
        case r'segments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TranscriptionSegmentsInner)]),
          ) as BuiltList<TranscriptionSegmentsInner>?;
          if (valueDes == null) continue;
          result.segments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Transcription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranscriptionBuilder();
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


/// verbose_json only
class TranscriptionTaskEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'transcribe')
  static const TranscriptionTaskEnum transcribe = _$transcriptionTaskEnum_transcribe;

  static Serializer<TranscriptionTaskEnum> get serializer => _$transcriptionTaskEnumSerializer;

  const TranscriptionTaskEnum._(String name): super(name);

  static BuiltSet<TranscriptionTaskEnum> get values => _$transcriptionTaskEnumValues;
  static TranscriptionTaskEnum valueOf(String name) => _$transcriptionTaskEnumValueOf(name);
}

/// Who transcribed; verbose_json only.
class TranscriptionProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'embedded')
  static const TranscriptionProviderEnum embedded = _$transcriptionProviderEnum_embedded;
  @BuiltValueEnumConst(wireName: r'remote')
  static const TranscriptionProviderEnum remote = _$transcriptionProviderEnum_remote;
  @BuiltValueEnumConst(wireName: r'container')
  static const TranscriptionProviderEnum container = _$transcriptionProviderEnum_container;

  static Serializer<TranscriptionProviderEnum> get serializer => _$transcriptionProviderEnumSerializer;

  const TranscriptionProviderEnum._(String name): super(name);

  static BuiltSet<TranscriptionProviderEnum> get values => _$transcriptionProviderEnumValues;
  static TranscriptionProviderEnum valueOf(String name) => _$transcriptionProviderEnumValueOf(name);
}

