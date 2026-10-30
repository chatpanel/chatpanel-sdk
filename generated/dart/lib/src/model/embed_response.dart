//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/embed_response_usage.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/embed_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'embed_response.g.dart';

/// EmbedResponse
///
/// Properties:
/// * [object] 
/// * [data] 
/// * [model] 
/// * [usage] 
/// * [ms] 
@BuiltValue()
abstract class EmbedResponse implements Built<EmbedResponse, EmbedResponseBuilder> {
  @BuiltValueField(wireName: r'object')
  EmbedResponseObjectEnum get object;
  // enum objectEnum {  list,  };

  @BuiltValueField(wireName: r'data')
  BuiltList<EmbedResponseDataInner> get data;

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'usage')
  EmbedResponseUsage? get usage;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  EmbedResponse._();

  factory EmbedResponse([void updates(EmbedResponseBuilder b)]) = _$EmbedResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmbedResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmbedResponse> get serializer => _$EmbedResponseSerializer();
}

class _$EmbedResponseSerializer implements PrimitiveSerializer<EmbedResponse> {
  @override
  final Iterable<Type> types = const [EmbedResponse, _$EmbedResponse];

  @override
  final String wireName = r'EmbedResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmbedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(EmbedResponseObjectEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(EmbedResponseDataInner)]),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(EmbedResponseUsage),
      );
    }
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmbedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmbedResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmbedResponseObjectEnum),
          ) as EmbedResponseObjectEnum;
          result.object = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EmbedResponseDataInner)]),
          ) as BuiltList<EmbedResponseDataInner>;
          result.data.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.model = valueDes;
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EmbedResponseUsage),
          ) as EmbedResponseUsage?;
          if (valueDes == null) continue;
          result.usage.replace(valueDes);
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmbedResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmbedResponseBuilder();
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


class EmbedResponseObjectEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'list')
  static const EmbedResponseObjectEnum list = _$embedResponseObjectEnum_list;

  static Serializer<EmbedResponseObjectEnum> get serializer => _$embedResponseObjectEnumSerializer;

  const EmbedResponseObjectEnum._(String name): super(name);

  static BuiltSet<EmbedResponseObjectEnum> get values => _$embedResponseObjectEnumValues;
  static EmbedResponseObjectEnum valueOf(String name) => _$embedResponseObjectEnumValueOf(name);
}

