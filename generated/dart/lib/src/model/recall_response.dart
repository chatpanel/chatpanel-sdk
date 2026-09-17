//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/memory.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recall_response.g.dart';

/// RecallResponse
///
/// Properties:
/// * [ok] 
/// * [size] 
/// * [memories] 
/// * [block] - A prompt block carrying the recalled memories.
@BuiltValue()
abstract class RecallResponse implements Built<RecallResponse, RecallResponseBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'memories')
  BuiltList<Memory> get memories;

  /// A prompt block carrying the recalled memories.
  @BuiltValueField(wireName: r'block')
  String? get block;

  RecallResponse._();

  factory RecallResponse([void updates(RecallResponseBuilder b)]) = _$RecallResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecallResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecallResponse> get serializer => _$RecallResponseSerializer();
}

class _$RecallResponseSerializer implements PrimitiveSerializer<RecallResponse> {
  @override
  final Iterable<Type> types = const [RecallResponse, _$RecallResponse];

  @override
  final String wireName = r'RecallResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecallResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    yield r'memories';
    yield serializers.serialize(
      object.memories,
      specifiedType: const FullType(BuiltList, [FullType(Memory)]),
    );
    if (object.block != null) {
      yield r'block';
      yield serializers.serialize(
        object.block,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecallResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecallResponseBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'memories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Memory)]),
          ) as BuiltList<Memory>;
          result.memories.replace(valueDes);
          break;
        case r'block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.block = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecallResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecallResponseBuilder();
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


