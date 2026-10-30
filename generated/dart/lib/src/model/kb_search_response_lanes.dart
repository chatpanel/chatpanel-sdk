//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_search_response_lanes.g.dart';

/// How many candidates each lane found.
///
/// Properties:
/// * [text] 
/// * [vector] 
/// * [graph] 
/// * [notes] 
@BuiltValue()
abstract class KbSearchResponseLanes implements Built<KbSearchResponseLanes, KbSearchResponseLanesBuilder> {
  @BuiltValueField(wireName: r'text')
  int? get text;

  @BuiltValueField(wireName: r'vector')
  int? get vector;

  @BuiltValueField(wireName: r'graph')
  int? get graph;

  @BuiltValueField(wireName: r'notes')
  int? get notes;

  KbSearchResponseLanes._();

  factory KbSearchResponseLanes([void updates(KbSearchResponseLanesBuilder b)]) = _$KbSearchResponseLanes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbSearchResponseLanesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbSearchResponseLanes> get serializer => _$KbSearchResponseLanesSerializer();
}

class _$KbSearchResponseLanesSerializer implements PrimitiveSerializer<KbSearchResponseLanes> {
  @override
  final Iterable<Type> types = const [KbSearchResponseLanes, _$KbSearchResponseLanes];

  @override
  final String wireName = r'KbSearchResponseLanes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbSearchResponseLanes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(int),
      );
    }
    if (object.vector != null) {
      yield r'vector';
      yield serializers.serialize(
        object.vector,
        specifiedType: const FullType(int),
      );
    }
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(int),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbSearchResponseLanes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbSearchResponseLanesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'vector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.vector = valueDes;
          break;
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.graph = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbSearchResponseLanes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbSearchResponseLanesBuilder();
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


