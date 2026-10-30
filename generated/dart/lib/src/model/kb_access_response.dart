//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_access.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_access_response.g.dart';

/// KbAccessResponse
///
/// Properties:
/// * [access] 
@BuiltValue()
abstract class KbAccessResponse implements Built<KbAccessResponse, KbAccessResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  KbAccess get access;

  KbAccessResponse._();

  factory KbAccessResponse([void updates(KbAccessResponseBuilder b)]) = _$KbAccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAccessResponse> get serializer => _$KbAccessResponseSerializer();
}

class _$KbAccessResponseSerializer implements PrimitiveSerializer<KbAccessResponse> {
  @override
  final Iterable<Type> types = const [KbAccessResponse, _$KbAccessResponse];

  @override
  final String wireName = r'KbAccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(KbAccess),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbAccess),
          ) as KbAccess;
          result.access.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbAccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAccessResponseBuilder();
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


