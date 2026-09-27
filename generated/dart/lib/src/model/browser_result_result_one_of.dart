//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_result_result_one_of.g.dart';

/// BrowserResultResultOneOf
///
/// Properties:
/// * [text] 
/// * [image] 
@BuiltValue()
abstract class BrowserResultResultOneOf implements Built<BrowserResultResultOneOf, BrowserResultResultOneOfBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'image')
  String? get image;

  BrowserResultResultOneOf._();

  factory BrowserResultResultOneOf([void updates(BrowserResultResultOneOfBuilder b)]) = _$BrowserResultResultOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserResultResultOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserResultResultOneOf> get serializer => _$BrowserResultResultOneOfSerializer();
}

class _$BrowserResultResultOneOfSerializer implements PrimitiveSerializer<BrowserResultResultOneOf> {
  @override
  final Iterable<Type> types = const [BrowserResultResultOneOf, _$BrowserResultResultOneOf];

  @override
  final String wireName = r'BrowserResultResultOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserResultResultOneOf object, {
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
    BrowserResultResultOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserResultResultOneOfBuilder result,
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
  BrowserResultResultOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserResultResultOneOfBuilder();
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


