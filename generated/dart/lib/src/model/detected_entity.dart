//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detected_entity.g.dart';

/// DetectedEntity
///
/// Properties:
/// * [value] 
/// * [type] - The model's own label.
/// * [start] - Character offset into the request text.
/// * [end] 
/// * [score] 
@BuiltValue()
abstract class DetectedEntity implements Built<DetectedEntity, DetectedEntityBuilder> {
  @BuiltValueField(wireName: r'value')
  String get value;

  /// The model's own label.
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Character offset into the request text.
  @BuiltValueField(wireName: r'start')
  int get start;

  @BuiltValueField(wireName: r'end')
  int get end;

  @BuiltValueField(wireName: r'score')
  num get score;

  DetectedEntity._();

  factory DetectedEntity([void updates(DetectedEntityBuilder b)]) = _$DetectedEntity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DetectedEntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DetectedEntity> get serializer => _$DetectedEntitySerializer();
}

class _$DetectedEntitySerializer implements PrimitiveSerializer<DetectedEntity> {
  @override
  final Iterable<Type> types = const [DetectedEntity, _$DetectedEntity];

  @override
  final String wireName = r'DetectedEntity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DetectedEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'start';
    yield serializers.serialize(
      object.start,
      specifiedType: const FullType(int),
    );
    yield r'end';
    yield serializers.serialize(
      object.end,
      specifiedType: const FullType(int),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DetectedEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DetectedEntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.end = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DetectedEntity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectedEntityBuilder();
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


