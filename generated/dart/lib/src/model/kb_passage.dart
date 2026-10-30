//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_passage.g.dart';

/// KbPassage
///
/// Properties:
/// * [id] - `<doc>#<n>`, or `note:<id>`.
/// * [doc] 
/// * [title] 
/// * [kind] 
/// * [page] 
/// * [pageEnd] 
/// * [section] - The heading path, ` › `-joined.
/// * [text] 
/// * [chars] 
/// * [score] - The fused rank score (RRF) — only its order means anything.
/// * [scores] - Each lane's own score (`text`, `vector`, `rerank`), comparable within one query.
/// * [rerank] 
/// * [lanes] 
/// * [via] - For a graph hit: the node(s) it was reached through.
/// * [cite] - As the model is told to write it: `[report.pdf p.12]`.
/// * [status] - A note's.
/// * [cites] - A note's passage ids.
@BuiltValue()
abstract class KbPassage implements Built<KbPassage, KbPassageBuilder> {
  /// `<doc>#<n>`, or `note:<id>`.
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'doc')
  String? get doc;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'kind')
  KbPassageKindEnum? get kind;
  // enum kindEnum {  text,  note,  };

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'pageEnd')
  int? get pageEnd;

  /// The heading path, ` › `-joined.
  @BuiltValueField(wireName: r'section')
  String? get section;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'chars')
  int? get chars;

  /// The fused rank score (RRF) — only its order means anything.
  @BuiltValueField(wireName: r'score')
  num? get score;

  /// Each lane's own score (`text`, `vector`, `rerank`), comparable within one query.
  @BuiltValueField(wireName: r'scores')
  BuiltMap<String, num>? get scores;

  @BuiltValueField(wireName: r'rerank')
  num? get rerank;

  @BuiltValueField(wireName: r'lanes')
  BuiltList<KbPassageLanesEnum>? get lanes;
  // enum lanesEnum {  text,  vector,  graph,  notes,  rerank,  };

  /// For a graph hit: the node(s) it was reached through.
  @BuiltValueField(wireName: r'via')
  BuiltList<String>? get via;

  /// As the model is told to write it: `[report.pdf p.12]`.
  @BuiltValueField(wireName: r'cite')
  String? get cite;

  /// A note's.
  @BuiltValueField(wireName: r'status')
  KbPassageStatusEnum? get status;
  // enum statusEnum {  proposed,  accepted,  };

  /// A note's passage ids.
  @BuiltValueField(wireName: r'cites')
  BuiltList<String>? get cites;

  KbPassage._();

  factory KbPassage([void updates(KbPassageBuilder b)]) = _$KbPassage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbPassageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbPassage> get serializer => _$KbPassageSerializer();
}

class _$KbPassageSerializer implements PrimitiveSerializer<KbPassage> {
  @override
  final Iterable<Type> types = const [KbPassage, _$KbPassage];

  @override
  final String wireName = r'KbPassage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbPassage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(KbPassageKindEnum),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.pageEnd != null) {
      yield r'pageEnd';
      yield serializers.serialize(
        object.pageEnd,
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
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.chars != null) {
      yield r'chars';
      yield serializers.serialize(
        object.chars,
        specifiedType: const FullType(int),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(num),
      );
    }
    if (object.scores != null) {
      yield r'scores';
      yield serializers.serialize(
        object.scores,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(num)]),
      );
    }
    if (object.rerank != null) {
      yield r'rerank';
      yield serializers.serialize(
        object.rerank,
        specifiedType: const FullType(num),
      );
    }
    if (object.lanes != null) {
      yield r'lanes';
      yield serializers.serialize(
        object.lanes,
        specifiedType: const FullType(BuiltList, [FullType(KbPassageLanesEnum)]),
      );
    }
    if (object.via != null) {
      yield r'via';
      yield serializers.serialize(
        object.via,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.cite != null) {
      yield r'cite';
      yield serializers.serialize(
        object.cite,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(KbPassageStatusEnum),
      );
    }
    if (object.cites != null) {
      yield r'cites';
      yield serializers.serialize(
        object.cites,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbPassage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbPassageBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbPassageKindEnum),
          ) as KbPassageKindEnum?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'pageEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pageEnd = valueDes;
          break;
        case r'section':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.section = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'chars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chars = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'scores':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.scores.replace(valueDes);
          break;
        case r'rerank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rerank = valueDes;
          break;
        case r'lanes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(KbPassageLanesEnum)]),
          ) as BuiltList<KbPassageLanesEnum>?;
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
        case r'cite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cite = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbPassageStatusEnum),
          ) as KbPassageStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'cites':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.cites.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbPassage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbPassageBuilder();
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


class KbPassageKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'text')
  static const KbPassageKindEnum text = _$kbPassageKindEnum_text;
  @BuiltValueEnumConst(wireName: r'note')
  static const KbPassageKindEnum note = _$kbPassageKindEnum_note;

  static Serializer<KbPassageKindEnum> get serializer => _$kbPassageKindEnumSerializer;

  const KbPassageKindEnum._(String name): super(name);

  static BuiltSet<KbPassageKindEnum> get values => _$kbPassageKindEnumValues;
  static KbPassageKindEnum valueOf(String name) => _$kbPassageKindEnumValueOf(name);
}

class KbPassageLanesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'text')
  static const KbPassageLanesEnum text = _$kbPassageLanesEnum_text;
  @BuiltValueEnumConst(wireName: r'vector')
  static const KbPassageLanesEnum vector = _$kbPassageLanesEnum_vector;
  @BuiltValueEnumConst(wireName: r'graph')
  static const KbPassageLanesEnum graph = _$kbPassageLanesEnum_graph;
  @BuiltValueEnumConst(wireName: r'notes')
  static const KbPassageLanesEnum notes = _$kbPassageLanesEnum_notes;
  @BuiltValueEnumConst(wireName: r'rerank')
  static const KbPassageLanesEnum rerank = _$kbPassageLanesEnum_rerank;

  static Serializer<KbPassageLanesEnum> get serializer => _$kbPassageLanesEnumSerializer;

  const KbPassageLanesEnum._(String name): super(name);

  static BuiltSet<KbPassageLanesEnum> get values => _$kbPassageLanesEnumValues;
  static KbPassageLanesEnum valueOf(String name) => _$kbPassageLanesEnumValueOf(name);
}

/// A note's.
class KbPassageStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'proposed')
  static const KbPassageStatusEnum proposed = _$kbPassageStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const KbPassageStatusEnum accepted = _$kbPassageStatusEnum_accepted;

  static Serializer<KbPassageStatusEnum> get serializer => _$kbPassageStatusEnumSerializer;

  const KbPassageStatusEnum._(String name): super(name);

  static BuiltSet<KbPassageStatusEnum> get values => _$kbPassageStatusEnumValues;
  static KbPassageStatusEnum valueOf(String name) => _$kbPassageStatusEnumValueOf(name);
}

