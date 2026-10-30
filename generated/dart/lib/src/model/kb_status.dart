//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_access.dart';
import 'package:chatpanel/src/model/kb_document.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_status.g.dart';

/// KbStatus
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [v] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [docs] 
/// * [chunks] 
/// * [notes] 
/// * [proposed] - Notes awaiting acceptance.
/// * [vectors] 
/// * [model] - The embedding model the vectors came from.
/// * [dims] 
/// * [embed] 
/// * [entities] 
/// * [edges] 
/// * [reach] - The tightest provenance of its documents (`internal`, `web`, or empty).
/// * [access] 
/// * [documents] 
/// * [bytes] - On disk.
/// * [dir] - The folder on disk — to a caller with the token only.
@BuiltValue()
abstract class KbStatus implements Built<KbStatus, KbStatusBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'v')
  int? get v;

  @BuiltValueField(wireName: r'createdAt')
  int? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  @BuiltValueField(wireName: r'docs')
  int get docs;

  @BuiltValueField(wireName: r'chunks')
  int get chunks;

  @BuiltValueField(wireName: r'notes')
  int get notes;

  /// Notes awaiting acceptance.
  @BuiltValueField(wireName: r'proposed')
  int? get proposed;

  @BuiltValueField(wireName: r'vectors')
  int get vectors;

  /// The embedding model the vectors came from.
  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'dims')
  int? get dims;

  @BuiltValueField(wireName: r'embed')
  KbStatusEmbedEnum? get embed;
  // enum embedEnum {  auto,  false,  };

  @BuiltValueField(wireName: r'entities')
  int get entities;

  @BuiltValueField(wireName: r'edges')
  int get edges;

  /// The tightest provenance of its documents (`internal`, `web`, or empty).
  @BuiltValueField(wireName: r'reach')
  String? get reach;

  @BuiltValueField(wireName: r'access')
  KbAccess? get access;

  @BuiltValueField(wireName: r'documents')
  BuiltList<KbDocument> get documents;

  /// On disk.
  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  /// The folder on disk — to a caller with the token only.
  @BuiltValueField(wireName: r'dir')
  String? get dir;

  KbStatus._();

  factory KbStatus([void updates(KbStatusBuilder b)]) = _$KbStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbStatus> get serializer => _$KbStatusSerializer();
}

class _$KbStatusSerializer implements PrimitiveSerializer<KbStatus> {
  @override
  final Iterable<Type> types = const [KbStatus, _$KbStatus];

  @override
  final String wireName = r'KbStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.v != null) {
      yield r'v';
      yield serializers.serialize(
        object.v,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    yield r'docs';
    yield serializers.serialize(
      object.docs,
      specifiedType: const FullType(int),
    );
    yield r'chunks';
    yield serializers.serialize(
      object.chunks,
      specifiedType: const FullType(int),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(int),
    );
    if (object.proposed != null) {
      yield r'proposed';
      yield serializers.serialize(
        object.proposed,
        specifiedType: const FullType(int),
      );
    }
    yield r'vectors';
    yield serializers.serialize(
      object.vectors,
      specifiedType: const FullType(int),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.dims != null) {
      yield r'dims';
      yield serializers.serialize(
        object.dims,
        specifiedType: const FullType(int),
      );
    }
    if (object.embed != null) {
      yield r'embed';
      yield serializers.serialize(
        object.embed,
        specifiedType: const FullType(KbStatusEmbedEnum),
      );
    }
    yield r'entities';
    yield serializers.serialize(
      object.entities,
      specifiedType: const FullType(int),
    );
    yield r'edges';
    yield serializers.serialize(
      object.edges,
      specifiedType: const FullType(int),
    );
    if (object.reach != null) {
      yield r'reach';
      yield serializers.serialize(
        object.reach,
        specifiedType: const FullType(String),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(KbAccess),
      );
    }
    yield r'documents';
    yield serializers.serialize(
      object.documents,
      specifiedType: const FullType(BuiltList, [FullType(KbDocument)]),
    );
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.dir != null) {
      yield r'dir';
      yield serializers.serialize(
        object.dir,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbStatusBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.v = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.docs = valueDes;
          break;
        case r'chunks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chunks = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notes = valueDes;
          break;
        case r'proposed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.proposed = valueDes;
          break;
        case r'vectors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vectors = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'dims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dims = valueDes;
          break;
        case r'embed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbStatusEmbedEnum),
          ) as KbStatusEmbedEnum?;
          if (valueDes == null) continue;
          result.embed = valueDes;
          break;
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.entities = valueDes;
          break;
        case r'edges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.edges = valueDes;
          break;
        case r'reach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reach = valueDes;
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbAccess),
          ) as KbAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        case r'documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbDocument)]),
          ) as BuiltList<KbDocument>;
          result.documents.replace(valueDes);
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'dir':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dir = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbStatusBuilder();
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


class KbStatusEmbedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const KbStatusEmbedEnum auto = _$kbStatusEmbedEnum_auto;
  @BuiltValueEnumConst(wireName: r'false')
  static const KbStatusEmbedEnum false_ = _$kbStatusEmbedEnum_false_;

  static Serializer<KbStatusEmbedEnum> get serializer => _$kbStatusEmbedEnumSerializer;

  const KbStatusEmbedEnum._(String name): super(name);

  static BuiltSet<KbStatusEmbedEnum> get values => _$kbStatusEmbedEnumValues;
  static KbStatusEmbedEnum valueOf(String name) => _$kbStatusEmbedEnumValueOf(name);
}

