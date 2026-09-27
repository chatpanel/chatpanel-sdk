//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_result_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_result.g.dart';

/// BrowserResult
///
/// Properties:
/// * [session] 
/// * [id] 
/// * [result] 
@BuiltValue()
abstract class BrowserResult implements Built<BrowserResult, BrowserResultBuilder> {
  @BuiltValueField(wireName: r'session')
  String get session;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'result')
  BrowserResultResult get result;

  BrowserResult._();

  factory BrowserResult([void updates(BrowserResultBuilder b)]) = _$BrowserResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserResult> get serializer => _$BrowserResultSerializer();
}

class _$BrowserResultSerializer implements PrimitiveSerializer<BrowserResult> {
  @override
  final Iterable<Type> types = const [BrowserResult, _$BrowserResult];

  @override
  final String wireName = r'BrowserResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session';
    yield serializers.serialize(
      object.session,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(BrowserResultResult),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.session = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BrowserResultResult),
          ) as BrowserResultResult;
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
  BrowserResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserResultBuilder();
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


