//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_page.g.dart';

/// KbPage
///
/// Properties:
/// * [doc] 
/// * [title] 
/// * [page] 
/// * [pages] 
/// * [text] 
@BuiltValue()
abstract class KbPage implements Built<KbPage, KbPageBuilder> {
  @BuiltValueField(wireName: r'doc')
  String get doc;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pages')
  int get pages;

  @BuiltValueField(wireName: r'text')
  String get text;

  KbPage._();

  factory KbPage([void updates(KbPageBuilder b)]) = _$KbPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbPage> get serializer => _$KbPageSerializer();
}

class _$KbPageSerializer implements PrimitiveSerializer<KbPage> {
  @override
  final Iterable<Type> types = const [KbPage, _$KbPage];

  @override
  final String wireName = r'KbPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'doc';
    yield serializers.serialize(
      object.doc,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'pages';
    yield serializers.serialize(
      object.pages,
      specifiedType: const FullType(int),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'doc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.doc = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pages = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbPageBuilder();
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


