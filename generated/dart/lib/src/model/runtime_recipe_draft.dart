//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_recipe_draft.g.dart';

/// RuntimeRecipeDraft
///
/// Properties:
/// * [path] 
/// * [size] 
/// * [spec] - llama-server --spec-type: draft-dspark, draft-mtp, draft-eagle3, draft-dflash or draft-simple.
@BuiltValue()
abstract class RuntimeRecipeDraft implements Built<RuntimeRecipeDraft, RuntimeRecipeDraftBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'size')
  int? get size;

  /// llama-server --spec-type: draft-dspark, draft-mtp, draft-eagle3, draft-dflash or draft-simple.
  @BuiltValueField(wireName: r'spec')
  String get spec;

  RuntimeRecipeDraft._();

  factory RuntimeRecipeDraft([void updates(RuntimeRecipeDraftBuilder b)]) = _$RuntimeRecipeDraft;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeRecipeDraftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeRecipeDraft> get serializer => _$RuntimeRecipeDraftSerializer();
}

class _$RuntimeRecipeDraftSerializer implements PrimitiveSerializer<RuntimeRecipeDraft> {
  @override
  final Iterable<Type> types = const [RuntimeRecipeDraft, _$RuntimeRecipeDraft];

  @override
  final String wireName = r'RuntimeRecipeDraft';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeRecipeDraft object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeRecipeDraft object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeRecipeDraftBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spec = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeRecipeDraft deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeRecipeDraftBuilder();
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


