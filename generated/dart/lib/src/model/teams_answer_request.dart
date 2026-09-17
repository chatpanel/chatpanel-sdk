//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teams_answer_request.g.dart';

/// TeamsAnswerRequest
///
/// Properties:
/// * [threadId] 
/// * [text] 
/// * [by] 
@BuiltValue()
abstract class TeamsAnswerRequest implements Built<TeamsAnswerRequest, TeamsAnswerRequestBuilder> {
  @BuiltValueField(wireName: r'threadId')
  String get threadId;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'by')
  String? get by;

  TeamsAnswerRequest._();

  factory TeamsAnswerRequest([void updates(TeamsAnswerRequestBuilder b)]) = _$TeamsAnswerRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamsAnswerRequestBuilder b) => b
      ..by = 'person';

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamsAnswerRequest> get serializer => _$TeamsAnswerRequestSerializer();
}

class _$TeamsAnswerRequestSerializer implements PrimitiveSerializer<TeamsAnswerRequest> {
  @override
  final Iterable<Type> types = const [TeamsAnswerRequest, _$TeamsAnswerRequest];

  @override
  final String wireName = r'TeamsAnswerRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamsAnswerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'threadId';
    yield serializers.serialize(
      object.threadId,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.by != null) {
      yield r'by';
      yield serializers.serialize(
        object.by,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamsAnswerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamsAnswerRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'threadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamsAnswerRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamsAnswerRequestBuilder();
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


