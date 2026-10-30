//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/embed_request_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'embed_request.g.dart';

/// EmbedRequest
///
/// Properties:
/// * [input] 
/// * [model] - The model `GET /v1/capabilities` lists for `embed`; 404 otherwise.
/// * [kind] - What the texts are — a model with instruction prefixes (E5) prefixes each accordingly.
/// * [budgetMs] 
@BuiltValue()
abstract class EmbedRequest implements Built<EmbedRequest, EmbedRequestBuilder> {
  @BuiltValueField(wireName: r'input')
  EmbedRequestInput get input;

  /// The model `GET /v1/capabilities` lists for `embed`; 404 otherwise.
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// What the texts are — a model with instruction prefixes (E5) prefixes each accordingly.
  @BuiltValueField(wireName: r'kind')
  EmbedRequestKindEnum? get kind;
  // enum kindEnum {  query,  passage,  };

  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  EmbedRequest._();

  factory EmbedRequest([void updates(EmbedRequestBuilder b)]) = _$EmbedRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmbedRequestBuilder b) => b
      ..kind = EmbedRequestKindEnum.valueOf('passage');

  @BuiltValueSerializer(custom: true)
  static Serializer<EmbedRequest> get serializer => _$EmbedRequestSerializer();
}

class _$EmbedRequestSerializer implements PrimitiveSerializer<EmbedRequest> {
  @override
  final Iterable<Type> types = const [EmbedRequest, _$EmbedRequest];

  @override
  final String wireName = r'EmbedRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmbedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'input';
    yield serializers.serialize(
      object.input,
      specifiedType: const FullType(EmbedRequestInput),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(EmbedRequestKindEnum),
      );
    }
    if (object.budgetMs != null) {
      yield r'budgetMs';
      yield serializers.serialize(
        object.budgetMs,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmbedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmbedRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'input':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmbedRequestInput),
          ) as EmbedRequestInput;
          result.input.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EmbedRequestKindEnum),
          ) as EmbedRequestKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'budgetMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.budgetMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmbedRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmbedRequestBuilder();
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


/// What the texts are — a model with instruction prefixes (E5) prefixes each accordingly.
class EmbedRequestKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'query')
  static const EmbedRequestKindEnum query = _$embedRequestKindEnum_query;
  @BuiltValueEnumConst(wireName: r'passage')
  static const EmbedRequestKindEnum passage = _$embedRequestKindEnum_passage;

  static Serializer<EmbedRequestKindEnum> get serializer => _$embedRequestKindEnumSerializer;

  const EmbedRequestKindEnum._(String name): super(name);

  static BuiltSet<EmbedRequestKindEnum> get values => _$embedRequestKindEnumValues;
  static EmbedRequestKindEnum valueOf(String name) => _$embedRequestKindEnumValueOf(name);
}

