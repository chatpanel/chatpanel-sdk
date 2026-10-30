//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_graph_response_neighbours_inner.g.dart';

/// KbGraphResponseNeighboursInner
///
/// Properties:
/// * [id] 
/// * [kind] 
/// * [label] 
/// * [weight] 
/// * [via] 
@BuiltValue()
abstract class KbGraphResponseNeighboursInner implements Built<KbGraphResponseNeighboursInner, KbGraphResponseNeighboursInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'weight')
  num? get weight;

  @BuiltValueField(wireName: r'via')
  BuiltList<BuiltMap<String, JsonObject?>>? get via;

  KbGraphResponseNeighboursInner._();

  factory KbGraphResponseNeighboursInner([void updates(KbGraphResponseNeighboursInnerBuilder b)]) = _$KbGraphResponseNeighboursInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbGraphResponseNeighboursInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbGraphResponseNeighboursInner> get serializer => _$KbGraphResponseNeighboursInnerSerializer();
}

class _$KbGraphResponseNeighboursInnerSerializer implements PrimitiveSerializer<KbGraphResponseNeighboursInner> {
  @override
  final Iterable<Type> types = const [KbGraphResponseNeighboursInner, _$KbGraphResponseNeighboursInner];

  @override
  final String wireName = r'KbGraphResponseNeighboursInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbGraphResponseNeighboursInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
    if (object.via != null) {
      yield r'via';
      yield serializers.serialize(
        object.via,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbGraphResponseNeighboursInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbGraphResponseNeighboursInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'via':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.via.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbGraphResponseNeighboursInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbGraphResponseNeighboursInnerBuilder();
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


