//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/capabilities_document_server.dart';
import 'package:chatpanel/src/model/capability.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capabilities_document.g.dart';

/// CapabilitiesDocument
///
/// Properties:
/// * [capabilities] 
/// * [server] 
@BuiltValue()
abstract class CapabilitiesDocument implements Built<CapabilitiesDocument, CapabilitiesDocumentBuilder> {
  @BuiltValueField(wireName: r'capabilities')
  BuiltList<Capability> get capabilities;

  @BuiltValueField(wireName: r'server')
  CapabilitiesDocumentServer get server;

  CapabilitiesDocument._();

  factory CapabilitiesDocument([void updates(CapabilitiesDocumentBuilder b)]) = _$CapabilitiesDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CapabilitiesDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CapabilitiesDocument> get serializer => _$CapabilitiesDocumentSerializer();
}

class _$CapabilitiesDocumentSerializer implements PrimitiveSerializer<CapabilitiesDocument> {
  @override
  final Iterable<Type> types = const [CapabilitiesDocument, _$CapabilitiesDocument];

  @override
  final String wireName = r'CapabilitiesDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CapabilitiesDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'capabilities';
    yield serializers.serialize(
      object.capabilities,
      specifiedType: const FullType(BuiltList, [FullType(Capability)]),
    );
    yield r'server';
    yield serializers.serialize(
      object.server,
      specifiedType: const FullType(CapabilitiesDocumentServer),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CapabilitiesDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CapabilitiesDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'capabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Capability)]),
          ) as BuiltList<Capability>;
          result.capabilities.replace(valueDes);
          break;
        case r'server':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CapabilitiesDocumentServer),
          ) as CapabilitiesDocumentServer;
          result.server.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CapabilitiesDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapabilitiesDocumentBuilder();
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


