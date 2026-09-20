//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detect_request.g.dart';

/// DetectRequest
///
/// Properties:
/// * [text] 
/// * [model] - A model this provider lists; 404 otherwise.
/// * [labels] - Keep only these of the model's labels.
/// * [budgetMs] - Refused before running if the provider's record predicts it cannot be met.
@BuiltValue()
abstract class DetectRequest implements Built<DetectRequest, DetectRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  /// A model this provider lists; 404 otherwise.
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// Keep only these of the model's labels.
  @BuiltValueField(wireName: r'labels')
  BuiltList<String>? get labels;

  /// Refused before running if the provider's record predicts it cannot be met.
  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  DetectRequest._();

  factory DetectRequest([void updates(DetectRequestBuilder b)]) = _$DetectRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DetectRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DetectRequest> get serializer => _$DetectRequestSerializer();
}

class _$DetectRequestSerializer implements PrimitiveSerializer<DetectRequest> {
  @override
  final Iterable<Type> types = const [DetectRequest, _$DetectRequest];

  @override
  final String wireName = r'DetectRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DetectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.labels != null) {
      yield r'labels';
      yield serializers.serialize(
        object.labels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.budgetMs != null) {
      yield r'budgetMs';
      yield serializers.serialize(
        object.budgetMs,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DetectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DetectRequestBuilder result,
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
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'labels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.labels.replace(valueDes);
          break;
        case r'budgetMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.budgetMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DetectRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectRequestBuilder();
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


