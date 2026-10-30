//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_status_response.g.dart';

/// KbStatusResponse
///
/// Properties:
/// * [kb] 
/// * [existed] 
/// * [ok] 
@BuiltValue()
abstract class KbStatusResponse implements Built<KbStatusResponse, KbStatusResponseBuilder> {
  @BuiltValueField(wireName: r'kb')
  KbStatus get kb;

  @BuiltValueField(wireName: r'existed')
  bool? get existed;

  @BuiltValueField(wireName: r'ok')
  bool? get ok;

  KbStatusResponse._();

  factory KbStatusResponse([void updates(KbStatusResponseBuilder b)]) = _$KbStatusResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbStatusResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbStatusResponse> get serializer => _$KbStatusResponseSerializer();
}

class _$KbStatusResponseSerializer implements PrimitiveSerializer<KbStatusResponse> {
  @override
  final Iterable<Type> types = const [KbStatusResponse, _$KbStatusResponse];

  @override
  final String wireName = r'KbStatusResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kb';
    yield serializers.serialize(
      object.kb,
      specifiedType: const FullType(KbStatus),
    );
    if (object.existed != null) {
      yield r'existed';
      yield serializers.serialize(
        object.existed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbStatusResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbStatus),
          ) as KbStatus;
          result.kb.replace(valueDes);
          break;
        case r'existed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.existed = valueDes;
          break;
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
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
  KbStatusResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbStatusResponseBuilder();
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


