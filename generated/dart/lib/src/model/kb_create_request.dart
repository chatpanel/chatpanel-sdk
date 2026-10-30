//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_create_request.g.dart';

/// KbCreateRequest
///
/// Properties:
/// * [id] - Chosen by the caller; made up when absent.
/// * [name] 
/// * [embed] - `off`: words and graph only, no vectors.
@BuiltValue()
abstract class KbCreateRequest implements Built<KbCreateRequest, KbCreateRequestBuilder> {
  /// Chosen by the caller; made up when absent.
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// `off`: words and graph only, no vectors.
  @BuiltValueField(wireName: r'embed')
  KbCreateRequestEmbedEnum? get embed;
  // enum embedEnum {  auto,  false,  };

  KbCreateRequest._();

  factory KbCreateRequest([void updates(KbCreateRequestBuilder b)]) = _$KbCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbCreateRequestBuilder b) => b
      ..embed = KbCreateRequestEmbedEnum.valueOf('auto');

  @BuiltValueSerializer(custom: true)
  static Serializer<KbCreateRequest> get serializer => _$KbCreateRequestSerializer();
}

class _$KbCreateRequestSerializer implements PrimitiveSerializer<KbCreateRequest> {
  @override
  final Iterable<Type> types = const [KbCreateRequest, _$KbCreateRequest];

  @override
  final String wireName = r'KbCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.embed != null) {
      yield r'embed';
      yield serializers.serialize(
        object.embed,
        specifiedType: const FullType(KbCreateRequestEmbedEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'embed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbCreateRequestEmbedEnum),
          ) as KbCreateRequestEmbedEnum?;
          if (valueDes == null) continue;
          result.embed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbCreateRequestBuilder();
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


/// `off`: words and graph only, no vectors.
class KbCreateRequestEmbedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const KbCreateRequestEmbedEnum auto = _$kbCreateRequestEmbedEnum_auto;
  @BuiltValueEnumConst(wireName: r'false')
  static const KbCreateRequestEmbedEnum false_ = _$kbCreateRequestEmbedEnum_false_;

  static Serializer<KbCreateRequestEmbedEnum> get serializer => _$kbCreateRequestEmbedEnumSerializer;

  const KbCreateRequestEmbedEnum._(String name): super(name);

  static BuiltSet<KbCreateRequestEmbedEnum> get values => _$kbCreateRequestEmbedEnumValues;
  static KbCreateRequestEmbedEnum valueOf(String name) => _$kbCreateRequestEmbedEnumValueOf(name);
}

