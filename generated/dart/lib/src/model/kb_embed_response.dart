//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_embed_response.g.dart';

/// KbEmbedResponse
///
/// Properties:
/// * [embedded] 
/// * [vectors] 
/// * [model] 
/// * [dims] 
/// * [state] - `ready`, `idle`, `loading`, `downloading`, `down`, `off`.
/// * [progress] 
@BuiltValue()
abstract class KbEmbedResponse implements Built<KbEmbedResponse, KbEmbedResponseBuilder> {
  @BuiltValueField(wireName: r'embedded')
  int get embedded;

  @BuiltValueField(wireName: r'vectors')
  int get vectors;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'dims')
  int? get dims;

  /// `ready`, `idle`, `loading`, `downloading`, `down`, `off`.
  @BuiltValueField(wireName: r'state')
  String get state;

  @BuiltValueField(wireName: r'progress')
  BuiltMap<String, JsonObject?>? get progress;

  KbEmbedResponse._();

  factory KbEmbedResponse([void updates(KbEmbedResponseBuilder b)]) = _$KbEmbedResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbEmbedResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbEmbedResponse> get serializer => _$KbEmbedResponseSerializer();
}

class _$KbEmbedResponseSerializer implements PrimitiveSerializer<KbEmbedResponse> {
  @override
  final Iterable<Type> types = const [KbEmbedResponse, _$KbEmbedResponse];

  @override
  final String wireName = r'KbEmbedResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbEmbedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'embedded';
    yield serializers.serialize(
      object.embedded,
      specifiedType: const FullType(int),
    );
    yield r'vectors';
    yield serializers.serialize(
      object.vectors,
      specifiedType: const FullType(int),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.dims != null) {
      yield r'dims';
      yield serializers.serialize(
        object.dims,
        specifiedType: const FullType(int),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbEmbedResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbEmbedResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'embedded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.embedded = valueDes;
          break;
        case r'vectors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vectors = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'dims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dims = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.progress.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbEmbedResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbEmbedResponseBuilder();
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


