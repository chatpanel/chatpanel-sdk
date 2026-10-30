//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_outline_outline_inner.g.dart';

/// KbOutlineOutlineInner
///
/// Properties:
/// * [doc] 
/// * [section] 
/// * [level] 
/// * [page] 
/// * [chunks] 
/// * [chars] 
/// * [first] - The first passage id of the section.
@BuiltValue()
abstract class KbOutlineOutlineInner implements Built<KbOutlineOutlineInner, KbOutlineOutlineInnerBuilder> {
  @BuiltValueField(wireName: r'doc')
  String? get doc;

  @BuiltValueField(wireName: r'section')
  String? get section;

  @BuiltValueField(wireName: r'level')
  int? get level;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'chunks')
  int? get chunks;

  @BuiltValueField(wireName: r'chars')
  int? get chars;

  /// The first passage id of the section.
  @BuiltValueField(wireName: r'first')
  String? get first;

  KbOutlineOutlineInner._();

  factory KbOutlineOutlineInner([void updates(KbOutlineOutlineInnerBuilder b)]) = _$KbOutlineOutlineInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbOutlineOutlineInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbOutlineOutlineInner> get serializer => _$KbOutlineOutlineInnerSerializer();
}

class _$KbOutlineOutlineInnerSerializer implements PrimitiveSerializer<KbOutlineOutlineInner> {
  @override
  final Iterable<Type> types = const [KbOutlineOutlineInner, _$KbOutlineOutlineInner];

  @override
  final String wireName = r'KbOutlineOutlineInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbOutlineOutlineInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.doc != null) {
      yield r'doc';
      yield serializers.serialize(
        object.doc,
        specifiedType: const FullType(String),
      );
    }
    if (object.section != null) {
      yield r'section';
      yield serializers.serialize(
        object.section,
        specifiedType: const FullType(String),
      );
    }
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.chunks != null) {
      yield r'chunks';
      yield serializers.serialize(
        object.chunks,
        specifiedType: const FullType(int),
      );
    }
    if (object.chars != null) {
      yield r'chars';
      yield serializers.serialize(
        object.chars,
        specifiedType: const FullType(int),
      );
    }
    if (object.first != null) {
      yield r'first';
      yield serializers.serialize(
        object.first,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbOutlineOutlineInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbOutlineOutlineInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'doc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.doc = valueDes;
          break;
        case r'section':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.section = valueDes;
          break;
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.level = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'chunks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chunks = valueDes;
          break;
        case r'chars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chars = valueDes;
          break;
        case r'first':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.first = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbOutlineOutlineInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbOutlineOutlineInnerBuilder();
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


