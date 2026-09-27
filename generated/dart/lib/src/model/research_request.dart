//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/research_follow_up.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_request.g.dart';

/// ResearchRequest
///
/// Properties:
/// * [question] - The person's question, in their words.
/// * [previous] 
/// * [model] - A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are.
/// * [excludeId] - A record that is not evidence — the conversation asking.
@BuiltValue()
abstract class ResearchRequest implements Built<ResearchRequest, ResearchRequestBuilder> {
  /// The person's question, in their words.
  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'previous')
  ResearchFollowUp? get previous;

  /// A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are.
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// A record that is not evidence — the conversation asking.
  @BuiltValueField(wireName: r'excludeId')
  String? get excludeId;

  ResearchRequest._();

  factory ResearchRequest([void updates(ResearchRequestBuilder b)]) = _$ResearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchRequest> get serializer => _$ResearchRequestSerializer();
}

class _$ResearchRequestSerializer implements PrimitiveSerializer<ResearchRequest> {
  @override
  final Iterable<Type> types = const [ResearchRequest, _$ResearchRequest];

  @override
  final String wireName = r'ResearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(ResearchFollowUp),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.excludeId != null) {
      yield r'excludeId';
      yield serializers.serialize(
        object.excludeId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchRequestBuilder result,
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
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResearchFollowUp),
          ) as ResearchFollowUp?;
          if (valueDes == null) continue;
          result.previous.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'excludeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.excludeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchRequestBuilder();
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


