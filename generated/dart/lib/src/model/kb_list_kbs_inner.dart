//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_access.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_list_kbs_inner.g.dart';

/// KbListKbsInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [docs] 
/// * [updatedAt] 
/// * [vectors] 
/// * [model] 
/// * [access] 
@BuiltValue()
abstract class KbListKbsInner implements Built<KbListKbsInner, KbListKbsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'docs')
  int get docs;

  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  @BuiltValueField(wireName: r'vectors')
  int? get vectors;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'access')
  KbAccess? get access;

  KbListKbsInner._();

  factory KbListKbsInner([void updates(KbListKbsInnerBuilder b)]) = _$KbListKbsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbListKbsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbListKbsInner> get serializer => _$KbListKbsInnerSerializer();
}

class _$KbListKbsInnerSerializer implements PrimitiveSerializer<KbListKbsInner> {
  @override
  final Iterable<Type> types = const [KbListKbsInner, _$KbListKbsInner];

  @override
  final String wireName = r'KbListKbsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbListKbsInner object, {
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
    yield r'docs';
    yield serializers.serialize(
      object.docs,
      specifiedType: const FullType(int),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.vectors != null) {
      yield r'vectors';
      yield serializers.serialize(
        object.vectors,
        specifiedType: const FullType(int),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    KbListKbsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbListKbsInnerBuilder result,
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
        case r'docs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.docs = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'vectors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
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
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KbAccess),
          ) as KbAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbListKbsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbListKbsInnerBuilder();
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


