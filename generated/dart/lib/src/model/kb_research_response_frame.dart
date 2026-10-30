//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_response_frame.g.dart';

/// KbResearchResponseFrame
///
/// Properties:
/// * [whole] 
/// * [docs] 
@BuiltValue()
abstract class KbResearchResponseFrame implements Built<KbResearchResponseFrame, KbResearchResponseFrameBuilder> {
  @BuiltValueField(wireName: r'whole')
  bool? get whole;

  @BuiltValueField(wireName: r'docs')
  BuiltList<String>? get docs;

  KbResearchResponseFrame._();

  factory KbResearchResponseFrame([void updates(KbResearchResponseFrameBuilder b)]) = _$KbResearchResponseFrame;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchResponseFrameBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchResponseFrame> get serializer => _$KbResearchResponseFrameSerializer();
}

class _$KbResearchResponseFrameSerializer implements PrimitiveSerializer<KbResearchResponseFrame> {
  @override
  final Iterable<Type> types = const [KbResearchResponseFrame, _$KbResearchResponseFrame];

  @override
  final String wireName = r'KbResearchResponseFrame';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchResponseFrame object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.whole != null) {
      yield r'whole';
      yield serializers.serialize(
        object.whole,
        specifiedType: const FullType(bool),
      );
    }
    if (object.docs != null) {
      yield r'docs';
      yield serializers.serialize(
        object.docs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchResponseFrame object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchResponseFrameBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'whole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.whole = valueDes;
          break;
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.docs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbResearchResponseFrame deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchResponseFrameBuilder();
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


