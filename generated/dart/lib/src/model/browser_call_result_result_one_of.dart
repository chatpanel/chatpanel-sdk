//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_call_result_result_one_of.g.dart';

/// BrowserCallResultResultOneOf
///
/// Properties:
/// * [text] 
/// * [image] - A data URL.
@BuiltValue()
abstract class BrowserCallResultResultOneOf implements Built<BrowserCallResultResultOneOf, BrowserCallResultResultOneOfBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  /// A data URL.
  @BuiltValueField(wireName: r'image')
  String? get image;

  BrowserCallResultResultOneOf._();

  factory BrowserCallResultResultOneOf([void updates(BrowserCallResultResultOneOfBuilder b)]) = _$BrowserCallResultResultOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserCallResultResultOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserCallResultResultOneOf> get serializer => _$BrowserCallResultResultOneOfSerializer();
}

class _$BrowserCallResultResultOneOfSerializer implements PrimitiveSerializer<BrowserCallResultResultOneOf> {
  @override
  final Iterable<Type> types = const [BrowserCallResultResultOneOf, _$BrowserCallResultResultOneOf];

  @override
  final String wireName = r'BrowserCallResultResultOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserCallResultResultOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserCallResultResultOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserCallResultResultOneOfBuilder result,
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserCallResultResultOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserCallResultResultOneOfBuilder();
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


