//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_add_response_added_inner.g.dart';

/// KbAddResponseAddedInner
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [pages] 
/// * [chunks] 
/// * [replaced] 
/// * [scanned] - A PDF with no text layer: indexed empty.
/// * [path] - Relative to the folder given.
@BuiltValue()
abstract class KbAddResponseAddedInner implements Built<KbAddResponseAddedInner, KbAddResponseAddedInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'pages')
  int get pages;

  @BuiltValueField(wireName: r'chunks')
  int get chunks;

  @BuiltValueField(wireName: r'replaced')
  bool? get replaced;

  /// A PDF with no text layer: indexed empty.
  @BuiltValueField(wireName: r'scanned')
  bool? get scanned;

  /// Relative to the folder given.
  @BuiltValueField(wireName: r'path')
  String? get path;

  KbAddResponseAddedInner._();

  factory KbAddResponseAddedInner([void updates(KbAddResponseAddedInnerBuilder b)]) = _$KbAddResponseAddedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAddResponseAddedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAddResponseAddedInner> get serializer => _$KbAddResponseAddedInnerSerializer();
}

class _$KbAddResponseAddedInnerSerializer implements PrimitiveSerializer<KbAddResponseAddedInner> {
  @override
  final Iterable<Type> types = const [KbAddResponseAddedInner, _$KbAddResponseAddedInner];

  @override
  final String wireName = r'KbAddResponseAddedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAddResponseAddedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'pages';
    yield serializers.serialize(
      object.pages,
      specifiedType: const FullType(int),
    );
    yield r'chunks';
    yield serializers.serialize(
      object.chunks,
      specifiedType: const FullType(int),
    );
    if (object.replaced != null) {
      yield r'replaced';
      yield serializers.serialize(
        object.replaced,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scanned != null) {
      yield r'scanned';
      yield serializers.serialize(
        object.scanned,
        specifiedType: const FullType(bool),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAddResponseAddedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAddResponseAddedInnerBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pages = valueDes;
          break;
        case r'chunks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chunks = valueDes;
          break;
        case r'replaced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.replaced = valueDes;
          break;
        case r'scanned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scanned = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbAddResponseAddedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAddResponseAddedInnerBuilder();
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


