//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prefs_delete200_response.g.dart';

/// PrefsDelete200Response
///
/// Properties:
/// * [ok] 
/// * [removed] 
@BuiltValue()
abstract class PrefsDelete200Response implements Built<PrefsDelete200Response, PrefsDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'removed')
  bool get removed;

  PrefsDelete200Response._();

  factory PrefsDelete200Response([void updates(PrefsDelete200ResponseBuilder b)]) = _$PrefsDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrefsDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrefsDelete200Response> get serializer => _$PrefsDelete200ResponseSerializer();
}

class _$PrefsDelete200ResponseSerializer implements PrimitiveSerializer<PrefsDelete200Response> {
  @override
  final Iterable<Type> types = const [PrefsDelete200Response, _$PrefsDelete200Response];

  @override
  final String wireName = r'PrefsDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrefsDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'removed';
    yield serializers.serialize(
      object.removed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrefsDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrefsDelete200ResponseBuilder result,
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
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.removed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrefsDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefsDelete200ResponseBuilder();
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


