//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/decide_question.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_request.g.dart';

/// DecideRequest
///
/// Properties:
/// * [state] - The text judged.
/// * [questions] - Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*).
/// * [model] - The model this provider serves; 404 otherwise.
/// * [budgetMs] 
@BuiltValue()
abstract class DecideRequest implements Built<DecideRequest, DecideRequestBuilder> {
  /// The text judged.
  @BuiltValueField(wireName: r'state')
  String get state;

  /// Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*).
  @BuiltValueField(wireName: r'questions')
  BuiltMap<String, DecideQuestion> get questions;

  /// The model this provider serves; 404 otherwise.
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  DecideRequest._();

  factory DecideRequest([void updates(DecideRequestBuilder b)]) = _$DecideRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideRequest> get serializer => _$DecideRequestSerializer();
}

class _$DecideRequestSerializer implements PrimitiveSerializer<DecideRequest> {
  @override
  final Iterable<Type> types = const [DecideRequest, _$DecideRequest];

  @override
  final String wireName = r'DecideRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    yield r'questions';
    yield serializers.serialize(
      object.questions,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DecideQuestion)]),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
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
    DecideRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DecideQuestion)]),
          ) as BuiltMap<String, DecideQuestion>;
          result.questions.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
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
  DecideRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideRequestBuilder();
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


