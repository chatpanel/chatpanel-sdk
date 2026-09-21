//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_engine_request.g.dart';

/// RuntimeEngineRequest
///
/// Properties:
/// * [action] 
@BuiltValue()
abstract class RuntimeEngineRequest implements Built<RuntimeEngineRequest, RuntimeEngineRequestBuilder> {
  @BuiltValueField(wireName: r'action')
  RuntimeEngineRequestActionEnum? get action;
  // enum actionEnum {  start,  };

  RuntimeEngineRequest._();

  factory RuntimeEngineRequest([void updates(RuntimeEngineRequestBuilder b)]) = _$RuntimeEngineRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeEngineRequestBuilder b) => b
      ..action = RuntimeEngineRequestActionEnum.valueOf('start');

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeEngineRequest> get serializer => _$RuntimeEngineRequestSerializer();
}

class _$RuntimeEngineRequestSerializer implements PrimitiveSerializer<RuntimeEngineRequest> {
  @override
  final Iterable<Type> types = const [RuntimeEngineRequest, _$RuntimeEngineRequest];

  @override
  final String wireName = r'RuntimeEngineRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeEngineRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(RuntimeEngineRequestActionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeEngineRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeEngineRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeEngineRequestActionEnum),
          ) as RuntimeEngineRequestActionEnum?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeEngineRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeEngineRequestBuilder();
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


class RuntimeEngineRequestActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'start')
  static const RuntimeEngineRequestActionEnum start = _$runtimeEngineRequestActionEnum_start;

  static Serializer<RuntimeEngineRequestActionEnum> get serializer => _$runtimeEngineRequestActionEnumSerializer;

  const RuntimeEngineRequestActionEnum._(String name): super(name);

  static BuiltSet<RuntimeEngineRequestActionEnum> get values => _$runtimeEngineRequestActionEnumValues;
  static RuntimeEngineRequestActionEnum valueOf(String name) => _$runtimeEngineRequestActionEnumValueOf(name);
}

