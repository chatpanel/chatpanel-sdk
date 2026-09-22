//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_speech_request.g.dart';

/// AudioSpeechRequest
///
/// Properties:
/// * [input] 
/// * [voice] - A local voice id, or the remote provider’s; the configured default when absent.
/// * [speed] 
/// * [responseFormat] - WAV is what the local engine makes.
@BuiltValue()
abstract class AudioSpeechRequest implements Built<AudioSpeechRequest, AudioSpeechRequestBuilder> {
  @BuiltValueField(wireName: r'input')
  String get input;

  /// A local voice id, or the remote provider’s; the configured default when absent.
  @BuiltValueField(wireName: r'voice')
  String? get voice;

  @BuiltValueField(wireName: r'speed')
  num? get speed;

  /// WAV is what the local engine makes.
  @BuiltValueField(wireName: r'response_format')
  AudioSpeechRequestResponseFormatEnum? get responseFormat;
  // enum responseFormatEnum {  wav,  };

  AudioSpeechRequest._();

  factory AudioSpeechRequest([void updates(AudioSpeechRequestBuilder b)]) = _$AudioSpeechRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AudioSpeechRequestBuilder b) => b
      ..speed = 1
      ..responseFormat = AudioSpeechRequestResponseFormatEnum.valueOf('wav');

  @BuiltValueSerializer(custom: true)
  static Serializer<AudioSpeechRequest> get serializer => _$AudioSpeechRequestSerializer();
}

class _$AudioSpeechRequestSerializer implements PrimitiveSerializer<AudioSpeechRequest> {
  @override
  final Iterable<Type> types = const [AudioSpeechRequest, _$AudioSpeechRequest];

  @override
  final String wireName = r'AudioSpeechRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AudioSpeechRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'input';
    yield serializers.serialize(
      object.input,
      specifiedType: const FullType(String),
    );
    if (object.voice != null) {
      yield r'voice';
      yield serializers.serialize(
        object.voice,
        specifiedType: const FullType(String),
      );
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(num),
      );
    }
    if (object.responseFormat != null) {
      yield r'response_format';
      yield serializers.serialize(
        object.responseFormat,
        specifiedType: const FullType(AudioSpeechRequestResponseFormatEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AudioSpeechRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AudioSpeechRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'input':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.input = valueDes;
          break;
        case r'voice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voice = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.speed = valueDes;
          break;
        case r'response_format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AudioSpeechRequestResponseFormatEnum),
          ) as AudioSpeechRequestResponseFormatEnum?;
          if (valueDes == null) continue;
          result.responseFormat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AudioSpeechRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AudioSpeechRequestBuilder();
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


/// WAV is what the local engine makes.
class AudioSpeechRequestResponseFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'wav')
  static const AudioSpeechRequestResponseFormatEnum wav = _$audioSpeechRequestResponseFormatEnum_wav;

  static Serializer<AudioSpeechRequestResponseFormatEnum> get serializer => _$audioSpeechRequestResponseFormatEnumSerializer;

  const AudioSpeechRequestResponseFormatEnum._(String name): super(name);

  static BuiltSet<AudioSpeechRequestResponseFormatEnum> get values => _$audioSpeechRequestResponseFormatEnumValues;
  static AudioSpeechRequestResponseFormatEnum valueOf(String name) => _$audioSpeechRequestResponseFormatEnumValueOf(name);
}

