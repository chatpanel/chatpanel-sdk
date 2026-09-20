//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_section.g.dart';

/// ReadSection
///
/// Properties:
/// * [id] - The page's own heading id when it has one, else a slug — cite as `url#id`.
/// * [heading] 
/// * [level] 
/// * [offset] - Character offset of the heading line into the content.
@BuiltValue()
abstract class ReadSection implements Built<ReadSection, ReadSectionBuilder> {
  /// The page's own heading id when it has one, else a slug — cite as `url#id`.
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'heading')
  String get heading;

  @BuiltValueField(wireName: r'level')
  int get level;

  /// Character offset of the heading line into the content.
  @BuiltValueField(wireName: r'offset')
  int get offset;

  ReadSection._();

  factory ReadSection([void updates(ReadSectionBuilder b)]) = _$ReadSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadSection> get serializer => _$ReadSectionSerializer();
}

class _$ReadSectionSerializer implements PrimitiveSerializer<ReadSection> {
  @override
  final Iterable<Type> types = const [ReadSection, _$ReadSection];

  @override
  final String wireName = r'ReadSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'heading';
    yield serializers.serialize(
      object.heading,
      specifiedType: const FullType(String),
    );
    yield r'level';
    yield serializers.serialize(
      object.level,
      specifiedType: const FullType(int),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadSection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadSectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'heading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.heading = valueDes;
          break;
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.level = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadSectionBuilder();
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


