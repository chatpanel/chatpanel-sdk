//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/decide_answer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_response.g.dart';

/// DecideResponse
///
/// Properties:
/// * [answers] - One per question asked, under the same key.
/// * [model] 
/// * [ms] 
/// * [calibrated] - Whether `p` is a calibrated probability. false for a zero-shot NLI concentration.
@BuiltValue()
abstract class DecideResponse implements Built<DecideResponse, DecideResponseBuilder> {
  /// One per question asked, under the same key.
  @BuiltValueField(wireName: r'answers')
  BuiltMap<String, DecideAnswer> get answers;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  /// Whether `p` is a calibrated probability. false for a zero-shot NLI concentration.
  @BuiltValueField(wireName: r'calibrated')
  bool? get calibrated;

  DecideResponse._();

  factory DecideResponse([void updates(DecideResponseBuilder b)]) = _$DecideResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideResponse> get serializer => _$DecideResponseSerializer();
}

class _$DecideResponseSerializer implements PrimitiveSerializer<DecideResponse> {
  @override
  final Iterable<Type> types = const [DecideResponse, _$DecideResponse];

  @override
  final String wireName = r'DecideResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'answers';
    yield serializers.serialize(
      object.answers,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DecideAnswer)]),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
    if (object.calibrated != null) {
      yield r'calibrated';
      yield serializers.serialize(
        object.calibrated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DecideAnswer)]),
          ) as BuiltMap<String, DecideAnswer>;
          result.answers.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        case r'calibrated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.calibrated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecideResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideResponseBuilder();
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


