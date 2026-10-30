//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_research_response_frame.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_research_response_ask.dart';
import 'package:chatpanel/src/model/kb_research_response_hits_inner.dart';
import 'package:chatpanel/src/model/kb_research_response_attachment.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_response.g.dart';

/// KbResearchResponse
///
/// Properties:
/// * [attachment] 
/// * [read] - What was read, grouped by document in page order (or the outline for a whole-document ask).
/// * [hits] 
/// * [queries] 
/// * [verdict] - The check's answer when a model was given.
/// * [rounds] 
/// * [ask] 
/// * [how] - How it was searched, in words.
/// * [frame] 
/// * [ms] 
@BuiltValue()
abstract class KbResearchResponse implements Built<KbResearchResponse, KbResearchResponseBuilder> {
  @BuiltValueField(wireName: r'attachment')
  KbResearchResponseAttachment? get attachment;

  /// What was read, grouped by document in page order (or the outline for a whole-document ask).
  @BuiltValueField(wireName: r'read')
  BuiltList<BuiltMap<String, JsonObject?>> get read;

  @BuiltValueField(wireName: r'hits')
  BuiltList<KbResearchResponseHitsInner> get hits;

  @BuiltValueField(wireName: r'queries')
  BuiltList<String> get queries;

  /// The check's answer when a model was given.
  @BuiltValueField(wireName: r'verdict')
  KbResearchResponseVerdictEnum? get verdict;
  // enum verdictEnum {  true,  partly,  false,  ,  };

  @BuiltValueField(wireName: r'rounds')
  int get rounds;

  @BuiltValueField(wireName: r'ask')
  KbResearchResponseAsk? get ask;

  /// How it was searched, in words.
  @BuiltValueField(wireName: r'how')
  String? get how;

  @BuiltValueField(wireName: r'frame')
  KbResearchResponseFrame? get frame;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  KbResearchResponse._();

  factory KbResearchResponse([void updates(KbResearchResponseBuilder b)]) = _$KbResearchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchResponse> get serializer => _$KbResearchResponseSerializer();
}

class _$KbResearchResponseSerializer implements PrimitiveSerializer<KbResearchResponse> {
  @override
  final Iterable<Type> types = const [KbResearchResponse, _$KbResearchResponse];

  @override
  final String wireName = r'KbResearchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachment != null) {
      yield r'attachment';
      yield serializers.serialize(
        object.attachment,
        specifiedType: const FullType(KbResearchResponseAttachment),
      );
    }
    yield r'read';
    yield serializers.serialize(
      object.read,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
    yield r'hits';
    yield serializers.serialize(
      object.hits,
      specifiedType: const FullType(BuiltList, [FullType(KbResearchResponseHitsInner)]),
    );
    yield r'queries';
    yield serializers.serialize(
      object.queries,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType.nullable(KbResearchResponseVerdictEnum),
      );
    }
    yield r'rounds';
    yield serializers.serialize(
      object.rounds,
      specifiedType: const FullType(int),
    );
    if (object.ask != null) {
      yield r'ask';
      yield serializers.serialize(
        object.ask,
        specifiedType: const FullType(KbResearchResponseAsk),
      );
    }
    if (object.how != null) {
      yield r'how';
      yield serializers.serialize(
        object.how,
        specifiedType: const FullType(String),
      );
    }
    if (object.frame != null) {
      yield r'frame';
      yield serializers.serialize(
        object.frame,
        specifiedType: const FullType(KbResearchResponseFrame),
      );
    }
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbResearchResponseAttachment),
          ) as KbResearchResponseAttachment?;
          if (valueDes == null) continue;
          result.attachment.replace(valueDes);
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.read.replace(valueDes);
          break;
        case r'hits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbResearchResponseHitsInner)]),
          ) as BuiltList<KbResearchResponseHitsInner>;
          result.hits.replace(valueDes);
          break;
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.queries.replace(valueDes);
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbResearchResponseVerdictEnum),
          ) as KbResearchResponseVerdictEnum?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        case r'rounds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rounds = valueDes;
          break;
        case r'ask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbResearchResponseAsk),
          ) as KbResearchResponseAsk?;
          if (valueDes == null) continue;
          result.ask.replace(valueDes);
          break;
        case r'how':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.how = valueDes;
          break;
        case r'frame':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbResearchResponseFrame),
          ) as KbResearchResponseFrame?;
          if (valueDes == null) continue;
          result.frame.replace(valueDes);
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbResearchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchResponseBuilder();
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


/// The check's answer when a model was given.
class KbResearchResponseVerdictEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const KbResearchResponseVerdictEnum true_ = _$kbResearchResponseVerdictEnum_true_;
  @BuiltValueEnumConst(wireName: r'partly')
  static const KbResearchResponseVerdictEnum partly = _$kbResearchResponseVerdictEnum_partly;
  @BuiltValueEnumConst(wireName: r'false')
  static const KbResearchResponseVerdictEnum false_ = _$kbResearchResponseVerdictEnum_false_;

  static Serializer<KbResearchResponseVerdictEnum> get serializer => _$kbResearchResponseVerdictEnumSerializer;

  const KbResearchResponseVerdictEnum._(String name): super(name);

  static BuiltSet<KbResearchResponseVerdictEnum> get values => _$kbResearchResponseVerdictEnumValues;
  static KbResearchResponseVerdictEnum valueOf(String name) => _$kbResearchResponseVerdictEnumValueOf(name);
}

