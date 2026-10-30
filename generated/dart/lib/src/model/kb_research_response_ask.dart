//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_response_ask.g.dart';

/// The question for the person, when the hits split evenly across documents.
///
/// Properties:
/// * [question] 
/// * [options] 
/// * [kind] 
/// * [step] 
@BuiltValue()
abstract class KbResearchResponseAsk implements Built<KbResearchResponseAsk, KbResearchResponseAskBuilder> {
  @BuiltValueField(wireName: r'question')
  String? get question;

  @BuiltValueField(wireName: r'options')
  BuiltList<String>? get options;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'step')
  String? get step;

  KbResearchResponseAsk._();

  factory KbResearchResponseAsk([void updates(KbResearchResponseAskBuilder b)]) = _$KbResearchResponseAsk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchResponseAskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchResponseAsk> get serializer => _$KbResearchResponseAskSerializer();
}

class _$KbResearchResponseAskSerializer implements PrimitiveSerializer<KbResearchResponseAsk> {
  @override
  final Iterable<Type> types = const [KbResearchResponseAsk, _$KbResearchResponseAsk];

  @override
  final String wireName = r'KbResearchResponseAsk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchResponseAsk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchResponseAsk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchResponseAskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.question = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbResearchResponseAsk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchResponseAskBuilder();
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


