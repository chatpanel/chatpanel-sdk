//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_request.g.dart';

/// KbResearchRequest
///
/// Properties:
/// * [question] 
/// * [answer] - The person's answer to a previous `ask` (a document title, or `all`).
/// * [ask] - `false`: never pause; search every document.
/// * [model] - A model (from `GET /v1/models`) for the evidence check; token-gated.
/// * [previous] - The previous response's `frame`, for a follow-up.
/// * [docs] - Only these documents.
@BuiltValue()
abstract class KbResearchRequest implements Built<KbResearchRequest, KbResearchRequestBuilder> {
  @BuiltValueField(wireName: r'question')
  String get question;

  /// The person's answer to a previous `ask` (a document title, or `all`).
  @BuiltValueField(wireName: r'answer')
  String? get answer;

  /// `false`: never pause; search every document.
  @BuiltValueField(wireName: r'ask')
  bool? get ask;

  /// A model (from `GET /v1/models`) for the evidence check; token-gated.
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// The previous response's `frame`, for a follow-up.
  @BuiltValueField(wireName: r'previous')
  BuiltMap<String, JsonObject?>? get previous;

  /// Only these documents.
  @BuiltValueField(wireName: r'docs')
  BuiltList<String>? get docs;

  KbResearchRequest._();

  factory KbResearchRequest([void updates(KbResearchRequestBuilder b)]) = _$KbResearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchRequestBuilder b) => b
      ..ask = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchRequest> get serializer => _$KbResearchRequestSerializer();
}

class _$KbResearchRequestSerializer implements PrimitiveSerializer<KbResearchRequest> {
  @override
  final Iterable<Type> types = const [KbResearchRequest, _$KbResearchRequest];

  @override
  final String wireName = r'KbResearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.answer != null) {
      yield r'answer';
      yield serializers.serialize(
        object.answer,
        specifiedType: const FullType(String),
      );
    }
    if (object.ask != null) {
      yield r'ask';
      yield serializers.serialize(
        object.ask,
        specifiedType: const FullType(bool),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.docs != null) {
      yield r'docs';
      yield serializers.serialize(
        object.docs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.answer = valueDes;
          break;
        case r'ask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ask = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.previous.replace(valueDes);
          break;
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.docs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbResearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchRequestBuilder();
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


