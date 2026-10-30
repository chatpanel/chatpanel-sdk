//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_graph_response_path_inner.g.dart';

/// KbGraphResponsePathInner
///
/// Properties:
/// * [id] 
/// * [label] 
/// * [kind] 
@BuiltValue()
abstract class KbGraphResponsePathInner implements Built<KbGraphResponsePathInner, KbGraphResponsePathInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  KbGraphResponsePathInner._();

  factory KbGraphResponsePathInner([void updates(KbGraphResponsePathInnerBuilder b)]) = _$KbGraphResponsePathInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbGraphResponsePathInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbGraphResponsePathInner> get serializer => _$KbGraphResponsePathInnerSerializer();
}

class _$KbGraphResponsePathInnerSerializer implements PrimitiveSerializer<KbGraphResponsePathInner> {
  @override
  final Iterable<Type> types = const [KbGraphResponsePathInner, _$KbGraphResponsePathInner];

  @override
  final String wireName = r'KbGraphResponsePathInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbGraphResponsePathInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbGraphResponsePathInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbGraphResponsePathInnerBuilder result,
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
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbGraphResponsePathInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbGraphResponsePathInnerBuilder();
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


