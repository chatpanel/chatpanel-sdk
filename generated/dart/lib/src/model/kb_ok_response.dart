//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_ok_response.g.dart';

/// KbOkResponse
///
/// Properties:
/// * [ok] 
@BuiltValue()
abstract class KbOkResponse implements Built<KbOkResponse, KbOkResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  KbOkResponse._();

  factory KbOkResponse([void updates(KbOkResponseBuilder b)]) = _$KbOkResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbOkResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbOkResponse> get serializer => _$KbOkResponseSerializer();
}

class _$KbOkResponseSerializer implements PrimitiveSerializer<KbOkResponse> {
  @override
  final Iterable<Type> types = const [KbOkResponse, _$KbOkResponse];

  @override
  final String wireName = r'KbOkResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbOkResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbOkResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbOkResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbOkResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbOkResponseBuilder();
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


