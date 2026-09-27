//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'research_response_groups_inner.g.dart';

/// ResearchResponseGroupsInner
///
/// Properties:
/// * [key] 
/// * [count] 
@BuiltValue()
abstract class ResearchResponseGroupsInner implements Built<ResearchResponseGroupsInner, ResearchResponseGroupsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'count')
  int get count;

  ResearchResponseGroupsInner._();

  factory ResearchResponseGroupsInner([void updates(ResearchResponseGroupsInnerBuilder b)]) = _$ResearchResponseGroupsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResearchResponseGroupsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResearchResponseGroupsInner> get serializer => _$ResearchResponseGroupsInnerSerializer();
}

class _$ResearchResponseGroupsInnerSerializer implements PrimitiveSerializer<ResearchResponseGroupsInner> {
  @override
  final Iterable<Type> types = const [ResearchResponseGroupsInner, _$ResearchResponseGroupsInner];

  @override
  final String wireName = r'ResearchResponseGroupsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResearchResponseGroupsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResearchResponseGroupsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResearchResponseGroupsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResearchResponseGroupsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResearchResponseGroupsInnerBuilder();
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


