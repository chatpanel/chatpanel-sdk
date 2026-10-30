//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_outline_outline_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_outline.g.dart';

/// KbOutline
///
/// Properties:
/// * [outline] 
@BuiltValue()
abstract class KbOutline implements Built<KbOutline, KbOutlineBuilder> {
  @BuiltValueField(wireName: r'outline')
  BuiltList<KbOutlineOutlineInner> get outline;

  KbOutline._();

  factory KbOutline([void updates(KbOutlineBuilder b)]) = _$KbOutline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbOutlineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbOutline> get serializer => _$KbOutlineSerializer();
}

class _$KbOutlineSerializer implements PrimitiveSerializer<KbOutline> {
  @override
  final Iterable<Type> types = const [KbOutline, _$KbOutline];

  @override
  final String wireName = r'KbOutline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbOutline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outline';
    yield serializers.serialize(
      object.outline,
      specifiedType: const FullType(BuiltList, [FullType(KbOutlineOutlineInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbOutline object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbOutlineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbOutlineOutlineInner)]),
          ) as BuiltList<KbOutlineOutlineInner>;
          result.outline.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbOutline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbOutlineBuilder();
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


