//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_graph_request.g.dart';

/// KbGraphRequest
///
/// Properties:
/// * [node] - An entity, section or topic by name (or a node id).
/// * [to] - A second node: the path from `node` to it.
/// * [hops] 
/// * [kinds] 
/// * [limit] 
@BuiltValue()
abstract class KbGraphRequest implements Built<KbGraphRequest, KbGraphRequestBuilder> {
  /// An entity, section or topic by name (or a node id).
  @BuiltValueField(wireName: r'node')
  String get node;

  /// A second node: the path from `node` to it.
  @BuiltValueField(wireName: r'to')
  String? get to;

  @BuiltValueField(wireName: r'hops')
  int? get hops;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<KbGraphRequestKindsEnum>? get kinds;
  // enum kindsEnum {  doc,  section,  entity,  topic,  note,  chunk,  };

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  KbGraphRequest._();

  factory KbGraphRequest([void updates(KbGraphRequestBuilder b)]) = _$KbGraphRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbGraphRequestBuilder b) => b
      ..hops = 1
      ..limit = 20;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbGraphRequest> get serializer => _$KbGraphRequestSerializer();
}

class _$KbGraphRequestSerializer implements PrimitiveSerializer<KbGraphRequest> {
  @override
  final Iterable<Type> types = const [KbGraphRequest, _$KbGraphRequest];

  @override
  final String wireName = r'KbGraphRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbGraphRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(String),
    );
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
    if (object.hops != null) {
      yield r'hops';
      yield serializers.serialize(
        object.hops,
        specifiedType: const FullType(int),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(KbGraphRequestKindsEnum)]),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbGraphRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbGraphRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.node = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'hops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.hops = valueDes;
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(KbGraphRequestKindsEnum)]),
          ) as BuiltList<KbGraphRequestKindsEnum>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbGraphRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbGraphRequestBuilder();
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


class KbGraphRequestKindsEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'doc')
  static const KbGraphRequestKindsEnum doc = _$kbGraphRequestKindsEnum_doc;
  @BuiltValueEnumConst(wireName: r'section')
  static const KbGraphRequestKindsEnum section = _$kbGraphRequestKindsEnum_section;
  @BuiltValueEnumConst(wireName: r'entity')
  static const KbGraphRequestKindsEnum entity = _$kbGraphRequestKindsEnum_entity;
  @BuiltValueEnumConst(wireName: r'topic')
  static const KbGraphRequestKindsEnum topic = _$kbGraphRequestKindsEnum_topic;
  @BuiltValueEnumConst(wireName: r'note')
  static const KbGraphRequestKindsEnum note = _$kbGraphRequestKindsEnum_note;
  @BuiltValueEnumConst(wireName: r'chunk')
  static const KbGraphRequestKindsEnum chunk = _$kbGraphRequestKindsEnum_chunk;

  static Serializer<KbGraphRequestKindsEnum> get serializer => _$kbGraphRequestKindsEnumSerializer;

  const KbGraphRequestKindsEnum._(String name): super(name);

  static BuiltSet<KbGraphRequestKindsEnum> get values => _$kbGraphRequestKindsEnumValues;
  static KbGraphRequestKindsEnum valueOf(String name) => _$kbGraphRequestKindsEnumValueOf(name);
}

