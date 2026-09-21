//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_option.g.dart';

/// DecideOption
///
/// Properties:
/// * [value] 
/// * [describe] - What the option means — travels to the model as its criterion.
@BuiltValue()
abstract class DecideOption implements Built<DecideOption, DecideOptionBuilder> {
  @BuiltValueField(wireName: r'value')
  String get value;

  /// What the option means — travels to the model as its criterion.
  @BuiltValueField(wireName: r'describe')
  String? get describe;

  DecideOption._();

  factory DecideOption([void updates(DecideOptionBuilder b)]) = _$DecideOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecideOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecideOption> get serializer => _$DecideOptionSerializer();
}

class _$DecideOptionSerializer implements PrimitiveSerializer<DecideOption> {
  @override
  final Iterable<Type> types = const [DecideOption, _$DecideOption];

  @override
  final String wireName = r'DecideOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecideOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.describe != null) {
      yield r'describe';
      yield serializers.serialize(
        object.describe,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecideOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DecideOptionBuilder result,
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
        case r'describe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.describe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecideOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecideOptionBuilder();
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


