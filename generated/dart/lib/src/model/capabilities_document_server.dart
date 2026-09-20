//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capabilities_document_server.g.dart';

/// CapabilitiesDocumentServer
///
/// Properties:
/// * [name] 
/// * [version] 
/// * [audit] - Where this provider's egress audit is served.
@BuiltValue()
abstract class CapabilitiesDocumentServer implements Built<CapabilitiesDocumentServer, CapabilitiesDocumentServerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'version')
  String get version;

  /// Where this provider's egress audit is served.
  @BuiltValueField(wireName: r'audit')
  String? get audit;

  CapabilitiesDocumentServer._();

  factory CapabilitiesDocumentServer([void updates(CapabilitiesDocumentServerBuilder b)]) = _$CapabilitiesDocumentServer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CapabilitiesDocumentServerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CapabilitiesDocumentServer> get serializer => _$CapabilitiesDocumentServerSerializer();
}

class _$CapabilitiesDocumentServerSerializer implements PrimitiveSerializer<CapabilitiesDocumentServer> {
  @override
  final Iterable<Type> types = const [CapabilitiesDocumentServer, _$CapabilitiesDocumentServer];

  @override
  final String wireName = r'CapabilitiesDocumentServer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CapabilitiesDocumentServer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.audit != null) {
      yield r'audit';
      yield serializers.serialize(
        object.audit,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CapabilitiesDocumentServer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CapabilitiesDocumentServerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'audit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.audit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CapabilitiesDocumentServer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapabilitiesDocumentServerBuilder();
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


