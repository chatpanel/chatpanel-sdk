//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'redaction_preview_request.g.dart';

/// RedactionPreviewRequest
///
/// Properties:
/// * [text] 
@BuiltValue()
abstract class RedactionPreviewRequest implements Built<RedactionPreviewRequest, RedactionPreviewRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  RedactionPreviewRequest._();

  factory RedactionPreviewRequest([void updates(RedactionPreviewRequestBuilder b)]) = _$RedactionPreviewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RedactionPreviewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RedactionPreviewRequest> get serializer => _$RedactionPreviewRequestSerializer();
}

class _$RedactionPreviewRequestSerializer implements PrimitiveSerializer<RedactionPreviewRequest> {
  @override
  final Iterable<Type> types = const [RedactionPreviewRequest, _$RedactionPreviewRequest];

  @override
  final String wireName = r'RedactionPreviewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RedactionPreviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RedactionPreviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RedactionPreviewRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RedactionPreviewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedactionPreviewRequestBuilder();
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


