//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skills_file200_response.g.dart';

/// SkillsFile200Response
///
/// Properties:
/// * [ok] 
/// * [path] 
/// * [text] 
@BuiltValue()
abstract class SkillsFile200Response implements Built<SkillsFile200Response, SkillsFile200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'text')
  String get text;

  SkillsFile200Response._();

  factory SkillsFile200Response([void updates(SkillsFile200ResponseBuilder b)]) = _$SkillsFile200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkillsFile200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkillsFile200Response> get serializer => _$SkillsFile200ResponseSerializer();
}

class _$SkillsFile200ResponseSerializer implements PrimitiveSerializer<SkillsFile200Response> {
  @override
  final Iterable<Type> types = const [SkillsFile200Response, _$SkillsFile200Response];

  @override
  final String wireName = r'SkillsFile200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkillsFile200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SkillsFile200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkillsFile200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
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
  SkillsFile200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkillsFile200ResponseBuilder();
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


