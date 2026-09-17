//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'memory_source.g.dart';

/// Who proposed the memory. There is no confirm dialog on a CLI, so attribution is the accountability.
///
/// Properties:
/// * [via] - The client — e.g. `sdk`, `cli`, `mcp`.
/// * [surface] 
/// * [agent] 
/// * [ref] 
@BuiltValue()
abstract class MemorySource implements Built<MemorySource, MemorySourceBuilder> {
  /// The client — e.g. `sdk`, `cli`, `mcp`.
  @BuiltValueField(wireName: r'via')
  String? get via;

  @BuiltValueField(wireName: r'surface')
  String? get surface;

  @BuiltValueField(wireName: r'agent')
  String? get agent;

  @BuiltValueField(wireName: r'ref')
  String? get ref;

  MemorySource._();

  factory MemorySource([void updates(MemorySourceBuilder b)]) = _$MemorySource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MemorySourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MemorySource> get serializer => _$MemorySourceSerializer();
}

class _$MemorySourceSerializer implements PrimitiveSerializer<MemorySource> {
  @override
  final Iterable<Type> types = const [MemorySource, _$MemorySource];

  @override
  final String wireName = r'MemorySource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MemorySource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.via != null) {
      yield r'via';
      yield serializers.serialize(
        object.via,
        specifiedType: const FullType(String),
      );
    }
    if (object.surface != null) {
      yield r'surface';
      yield serializers.serialize(
        object.surface,
        specifiedType: const FullType(String),
      );
    }
    if (object.agent != null) {
      yield r'agent';
      yield serializers.serialize(
        object.agent,
        specifiedType: const FullType(String),
      );
    }
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MemorySource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MemorySourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'via':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.via = valueDes;
          break;
        case r'surface':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.surface = valueDes;
          break;
        case r'agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agent = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MemorySource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemorySourceBuilder();
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


