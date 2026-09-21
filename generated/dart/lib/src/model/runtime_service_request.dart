//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_service_request.g.dart';

/// RuntimeServiceRequest
///
/// Properties:
/// * [action] 
/// * [model] - With `action: model` — a catalogue id or a Hugging Face owner/name.
@BuiltValue()
abstract class RuntimeServiceRequest implements Built<RuntimeServiceRequest, RuntimeServiceRequestBuilder> {
  @BuiltValueField(wireName: r'action')
  RuntimeServiceRequestActionEnum? get action;
  // enum actionEnum {  start,  stop,  model,  };

  /// With `action: model` — a catalogue id or a Hugging Face owner/name.
  @BuiltValueField(wireName: r'model')
  String? get model;

  RuntimeServiceRequest._();

  factory RuntimeServiceRequest([void updates(RuntimeServiceRequestBuilder b)]) = _$RuntimeServiceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeServiceRequestBuilder b) => b
      ..action = RuntimeServiceRequestActionEnum.valueOf('start');

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeServiceRequest> get serializer => _$RuntimeServiceRequestSerializer();
}

class _$RuntimeServiceRequestSerializer implements PrimitiveSerializer<RuntimeServiceRequest> {
  @override
  final Iterable<Type> types = const [RuntimeServiceRequest, _$RuntimeServiceRequest];

  @override
  final String wireName = r'RuntimeServiceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeServiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(RuntimeServiceRequestActionEnum),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeServiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeServiceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuntimeServiceRequestActionEnum),
          ) as RuntimeServiceRequestActionEnum?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeServiceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeServiceRequestBuilder();
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


class RuntimeServiceRequestActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'start')
  static const RuntimeServiceRequestActionEnum start = _$runtimeServiceRequestActionEnum_start;
  @BuiltValueEnumConst(wireName: r'stop')
  static const RuntimeServiceRequestActionEnum stop = _$runtimeServiceRequestActionEnum_stop;
  @BuiltValueEnumConst(wireName: r'model')
  static const RuntimeServiceRequestActionEnum model = _$runtimeServiceRequestActionEnum_model;

  static Serializer<RuntimeServiceRequestActionEnum> get serializer => _$runtimeServiceRequestActionEnumSerializer;

  const RuntimeServiceRequestActionEnum._(String name): super(name);

  static BuiltSet<RuntimeServiceRequestActionEnum> get values => _$runtimeServiceRequestActionEnumValues;
  static RuntimeServiceRequestActionEnum valueOf(String name) => _$runtimeServiceRequestActionEnumValueOf(name);
}

