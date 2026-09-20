//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_request.g.dart';

/// Either `name` + `data` (open a document) or `hash` + `page` (read one page of an open document).
///
/// Properties:
/// * [name] - The file name — its extension helps tell office formats apart.
/// * [type] - The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide.
/// * [data] - The whole file, base64. At most 64 MB decoded.
/// * [hash] - The `hash` an open call returned.
/// * [page] - The page to read, 1-based.
/// * [budgetMs] - Refused before parsing if the worker's record predicts it cannot be met.
@BuiltValue()
abstract class ExtractRequest implements Built<ExtractRequest, ExtractRequestBuilder> {
  /// The file name — its extension helps tell office formats apart.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The whole file, base64. At most 64 MB decoded.
  @BuiltValueField(wireName: r'data')
  String? get data;

  /// The `hash` an open call returned.
  @BuiltValueField(wireName: r'hash')
  String? get hash;

  /// The page to read, 1-based.
  @BuiltValueField(wireName: r'page')
  int? get page;

  /// Refused before parsing if the worker's record predicts it cannot be met.
  @BuiltValueField(wireName: r'budgetMs')
  num? get budgetMs;

  ExtractRequest._();

  factory ExtractRequest([void updates(ExtractRequestBuilder b)]) = _$ExtractRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractRequest> get serializer => _$ExtractRequestSerializer();
}

class _$ExtractRequestSerializer implements PrimitiveSerializer<ExtractRequest> {
  @override
  final Iterable<Type> types = const [ExtractRequest, _$ExtractRequest];

  @override
  final String wireName = r'ExtractRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(String),
      );
    }
    if (object.hash != null) {
      yield r'hash';
      yield serializers.serialize(
        object.hash,
        specifiedType: const FullType(String),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
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
    ExtractRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hash = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
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
  ExtractRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractRequestBuilder();
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


