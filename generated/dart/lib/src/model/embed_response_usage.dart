//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'embed_response_usage.g.dart';

/// EmbedResponseUsage
///
/// Properties:
/// * [promptTokens] 
/// * [totalTokens] 
@BuiltValue()
abstract class EmbedResponseUsage implements Built<EmbedResponseUsage, EmbedResponseUsageBuilder> {
  @BuiltValueField(wireName: r'prompt_tokens')
  int? get promptTokens;

  @BuiltValueField(wireName: r'total_tokens')
  int? get totalTokens;

  EmbedResponseUsage._();

  factory EmbedResponseUsage([void updates(EmbedResponseUsageBuilder b)]) = _$EmbedResponseUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmbedResponseUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmbedResponseUsage> get serializer => _$EmbedResponseUsageSerializer();
}

class _$EmbedResponseUsageSerializer implements PrimitiveSerializer<EmbedResponseUsage> {
  @override
  final Iterable<Type> types = const [EmbedResponseUsage, _$EmbedResponseUsage];

  @override
  final String wireName = r'EmbedResponseUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmbedResponseUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.promptTokens != null) {
      yield r'prompt_tokens';
      yield serializers.serialize(
        object.promptTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalTokens != null) {
      yield r'total_tokens';
      yield serializers.serialize(
        object.totalTokens,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmbedResponseUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmbedResponseUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prompt_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.promptTokens = valueDes;
          break;
        case r'total_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmbedResponseUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmbedResponseUsageBuilder();
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


