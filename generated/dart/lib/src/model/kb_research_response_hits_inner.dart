//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_research_response_hits_inner.g.dart';

/// KbResearchResponseHitsInner
///
/// Properties:
/// * [id] 
/// * [doc] 
/// * [title] 
/// * [page] 
/// * [section] 
/// * [cite] 
/// * [lanes] 
/// * [via] 
@BuiltValue()
abstract class KbResearchResponseHitsInner implements Built<KbResearchResponseHitsInner, KbResearchResponseHitsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'doc')
  String? get doc;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'section')
  String? get section;

  @BuiltValueField(wireName: r'cite')
  String? get cite;

  @BuiltValueField(wireName: r'lanes')
  BuiltList<String>? get lanes;

  @BuiltValueField(wireName: r'via')
  BuiltList<String>? get via;

  KbResearchResponseHitsInner._();

  factory KbResearchResponseHitsInner([void updates(KbResearchResponseHitsInnerBuilder b)]) = _$KbResearchResponseHitsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbResearchResponseHitsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbResearchResponseHitsInner> get serializer => _$KbResearchResponseHitsInnerSerializer();
}

class _$KbResearchResponseHitsInnerSerializer implements PrimitiveSerializer<KbResearchResponseHitsInner> {
  @override
  final Iterable<Type> types = const [KbResearchResponseHitsInner, _$KbResearchResponseHitsInner];

  @override
  final String wireName = r'KbResearchResponseHitsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbResearchResponseHitsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.doc != null) {
      yield r'doc';
      yield serializers.serialize(
        object.doc,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.section != null) {
      yield r'section';
      yield serializers.serialize(
        object.section,
        specifiedType: const FullType(String),
      );
    }
    if (object.cite != null) {
      yield r'cite';
      yield serializers.serialize(
        object.cite,
        specifiedType: const FullType(String),
      );
    }
    if (object.lanes != null) {
      yield r'lanes';
      yield serializers.serialize(
        object.lanes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.via != null) {
      yield r'via';
      yield serializers.serialize(
        object.via,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbResearchResponseHitsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbResearchResponseHitsInnerBuilder result,
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
        case r'doc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'section':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.section = valueDes;
          break;
        case r'cite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cite = valueDes;
          break;
        case r'lanes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.lanes.replace(valueDes);
          break;
        case r'via':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
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
  KbResearchResponseHitsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbResearchResponseHitsInnerBuilder();
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


