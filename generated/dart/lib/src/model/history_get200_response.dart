//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/history_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_get200_response.g.dart';

/// HistoryGet200Response
///
/// Properties:
/// * [ok] 
/// * [record] 
@BuiltValue()
abstract class HistoryGet200Response implements Built<HistoryGet200Response, HistoryGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'record')
  HistoryRecord get record;

  HistoryGet200Response._();

  factory HistoryGet200Response([void updates(HistoryGet200ResponseBuilder b)]) = _$HistoryGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryGet200Response> get serializer => _$HistoryGet200ResponseSerializer();
}

class _$HistoryGet200ResponseSerializer implements PrimitiveSerializer<HistoryGet200Response> {
  @override
  final Iterable<Type> types = const [HistoryGet200Response, _$HistoryGet200Response];

  @override
  final String wireName = r'HistoryGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'record';
    yield serializers.serialize(
      object.record,
      specifiedType: const FullType(HistoryRecord),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryGet200ResponseBuilder result,
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
        case r'record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HistoryRecord),
          ) as HistoryRecord;
          result.record = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryGet200ResponseBuilder();
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


