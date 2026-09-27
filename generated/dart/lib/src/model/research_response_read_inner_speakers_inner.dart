//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_response_read_inner_speakers_inner.g.dart';

/// ResearchResponseReadInnerSpeakersInner
///
/// Properties:
/// * [name] 
/// * [lines] 
@BuiltValue()
abstract class ResearchResponseReadInnerSpeakersInner implements Built<ResearchResponseReadInnerSpeakersInner, ResearchResponseReadInnerSpeakersInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'lines')
  int? get lines;

  ResearchResponseReadInnerSpeakersInner._();

  factory ResearchResponseReadInnerSpeakersInner([void updates(ResearchResponseReadInnerSpeakersInnerBuilder b)]) = _$ResearchResponseReadInnerSpeakersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchResponseReadInnerSpeakersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchResponseReadInnerSpeakersInner> get serializer => _$ResearchResponseReadInnerSpeakersInnerSerializer();
}

class _$ResearchResponseReadInnerSpeakersInnerSerializer implements PrimitiveSerializer<ResearchResponseReadInnerSpeakersInner> {
  @override
  final Iterable<Type> types = const [ResearchResponseReadInnerSpeakersInner, _$ResearchResponseReadInnerSpeakersInner];

  @override
  final String wireName = r'ResearchResponseReadInnerSpeakersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchResponseReadInnerSpeakersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.lines != null) {
      yield r'lines';
      yield serializers.serialize(
        object.lines,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchResponseReadInnerSpeakersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchResponseReadInnerSpeakersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'lines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lines = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchResponseReadInnerSpeakersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchResponseReadInnerSpeakersInnerBuilder();
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


