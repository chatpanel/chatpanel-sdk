//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_ingest200_response.g.dart';

/// HistoryIngest200Response
///
/// Properties:
/// * [ok] 
/// * [size] 
@BuiltValue()
abstract class HistoryIngest200Response implements Built<HistoryIngest200Response, HistoryIngest200ResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'size')
  int get size;

  HistoryIngest200Response._();

  factory HistoryIngest200Response([void updates(HistoryIngest200ResponseBuilder b)]) = _$HistoryIngest200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryIngest200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryIngest200Response> get serializer => _$HistoryIngest200ResponseSerializer();
}

class _$HistoryIngest200ResponseSerializer implements PrimitiveSerializer<HistoryIngest200Response> {
  @override
  final Iterable<Type> types = const [HistoryIngest200Response, _$HistoryIngest200Response];

  @override
  final String wireName = r'HistoryIngest200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryIngest200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryIngest200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryIngest200ResponseBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryIngest200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryIngest200ResponseBuilder();
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


