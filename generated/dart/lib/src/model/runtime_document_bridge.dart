//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_document_bridge.g.dart';

/// RuntimeDocumentBridge
///
/// Properties:
/// * [ok] 
/// * [version] 
@BuiltValue()
abstract class RuntimeDocumentBridge implements Built<RuntimeDocumentBridge, RuntimeDocumentBridgeBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool? get ok;

  @BuiltValueField(wireName: r'version')
  String? get version;

  RuntimeDocumentBridge._();

  factory RuntimeDocumentBridge([void updates(RuntimeDocumentBridgeBuilder b)]) = _$RuntimeDocumentBridge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeDocumentBridgeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeDocumentBridge> get serializer => _$RuntimeDocumentBridgeSerializer();
}

class _$RuntimeDocumentBridgeSerializer implements PrimitiveSerializer<RuntimeDocumentBridge> {
  @override
  final Iterable<Type> types = const [RuntimeDocumentBridge, _$RuntimeDocumentBridge];

  @override
  final String wireName = r'RuntimeDocumentBridge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeDocumentBridge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(bool),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeDocumentBridge object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeDocumentBridgeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ok = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeDocumentBridge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeDocumentBridgeBuilder();
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


