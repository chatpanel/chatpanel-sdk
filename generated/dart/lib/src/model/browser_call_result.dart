//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_call_result_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_call_result.g.dart';

/// BrowserCallResult
///
/// Properties:
/// * [ok] 
/// * [result] 
@BuiltValue()
abstract class BrowserCallResult implements Built<BrowserCallResult, BrowserCallResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'result')
  BrowserCallResultResult get result;

  BrowserCallResult._();

  factory BrowserCallResult([void updates(BrowserCallResultBuilder b)]) = _$BrowserCallResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserCallResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserCallResult> get serializer => _$BrowserCallResultSerializer();
}

class _$BrowserCallResultSerializer implements PrimitiveSerializer<BrowserCallResult> {
  @override
  final Iterable<Type> types = const [BrowserCallResult, _$BrowserCallResult];

  @override
  final String wireName = r'BrowserCallResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserCallResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(BrowserCallResultResult),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserCallResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserCallResultBuilder result,
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
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BrowserCallResultResult),
          ) as BrowserCallResultResult;
          result.result.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserCallResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserCallResultBuilder();
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


