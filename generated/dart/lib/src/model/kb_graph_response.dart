//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_graph_response_neighbours_inner.dart';
import 'package:chatpanel/src/model/kb_graph_response_node.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_graph_response_path_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_graph_response.g.dart';

/// KbGraphResponse
///
/// Properties:
/// * [node] 
/// * [neighbours] 
/// * [to] 
/// * [path] 
/// * [message] 
@BuiltValue()
abstract class KbGraphResponse implements Built<KbGraphResponse, KbGraphResponseBuilder> {
  @BuiltValueField(wireName: r'node')
  KbGraphResponseNode get node;

  @BuiltValueField(wireName: r'neighbours')
  BuiltList<KbGraphResponseNeighboursInner> get neighbours;

  @BuiltValueField(wireName: r'to')
  String? get to;

  @BuiltValueField(wireName: r'path')
  BuiltList<KbGraphResponsePathInner>? get path;

  @BuiltValueField(wireName: r'message')
  String? get message;

  KbGraphResponse._();

  factory KbGraphResponse([void updates(KbGraphResponseBuilder b)]) = _$KbGraphResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbGraphResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbGraphResponse> get serializer => _$KbGraphResponseSerializer();
}

class _$KbGraphResponseSerializer implements PrimitiveSerializer<KbGraphResponse> {
  @override
  final Iterable<Type> types = const [KbGraphResponse, _$KbGraphResponse];

  @override
  final String wireName = r'KbGraphResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbGraphResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(KbGraphResponseNode),
    );
    yield r'neighbours';
    yield serializers.serialize(
      object.neighbours,
      specifiedType: const FullType(BuiltList, [FullType(KbGraphResponseNeighboursInner)]),
    );
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(BuiltList, [FullType(KbGraphResponsePathInner)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbGraphResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbGraphResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbGraphResponseNode),
          ) as KbGraphResponseNode;
          result.node.replace(valueDes);
          break;
        case r'neighbours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbGraphResponseNeighboursInner)]),
          ) as BuiltList<KbGraphResponseNeighboursInner>;
          result.neighbours.replace(valueDes);
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(KbGraphResponsePathInner)]),
          ) as BuiltList<KbGraphResponsePathInner>?;
          if (valueDes == null) continue;
          result.path.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbGraphResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbGraphResponseBuilder();
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


