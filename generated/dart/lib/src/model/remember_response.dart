//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/memory.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remember_response.g.dart';

/// RememberResponse
///
/// Properties:
/// * [ok] 
/// * [action] 
/// * [record] 
/// * [replaced] 
/// * [size] 
@BuiltValue()
abstract class RememberResponse implements Built<RememberResponse, RememberResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'record')
  Memory get record;

  @BuiltValueField(wireName: r'replaced')
  Memory? get replaced;

  @BuiltValueField(wireName: r'size')
  int? get size;

  RememberResponse._();

  factory RememberResponse([void updates(RememberResponseBuilder b)]) = _$RememberResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RememberResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RememberResponse> get serializer => _$RememberResponseSerializer();
}

class _$RememberResponseSerializer implements PrimitiveSerializer<RememberResponse> {
  @override
  final Iterable<Type> types = const [RememberResponse, _$RememberResponse];

  @override
  final String wireName = r'RememberResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RememberResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'record';
    yield serializers.serialize(
      object.record,
      specifiedType: const FullType(Memory),
    );
    if (object.replaced != null) {
      yield r'replaced';
      yield serializers.serialize(
        object.replaced,
        specifiedType: const FullType.nullable(Memory),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RememberResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RememberResponseBuilder result,
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
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Memory),
          ) as Memory;
          result.record = valueDes;
          break;
        case r'replaced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Memory),
          ) as Memory?;
          if (valueDes == null) continue;
          result.replaced = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
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
  RememberResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RememberResponseBuilder();
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


