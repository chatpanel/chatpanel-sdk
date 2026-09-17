//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/record_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_request_upserts_inner.g.dart';

/// IngestRequestUpsertsInner
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [type] 
/// * [date] 
/// * [text] 
@BuiltValue()
abstract class IngestRequestUpsertsInner implements Built<IngestRequestUpsertsInner, IngestRequestUpsertsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  RecordType? get type;
  // enum typeEnum {  chat,  note,  meeting,  brief,  };

  @BuiltValueField(wireName: r'date')
  int? get date;

  @BuiltValueField(wireName: r'text')
  String get text;

  IngestRequestUpsertsInner._();

  factory IngestRequestUpsertsInner([void updates(IngestRequestUpsertsInnerBuilder b)]) = _$IngestRequestUpsertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRequestUpsertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRequestUpsertsInner> get serializer => _$IngestRequestUpsertsInnerSerializer();
}

class _$IngestRequestUpsertsInnerSerializer implements PrimitiveSerializer<IngestRequestUpsertsInner> {
  @override
  final Iterable<Type> types = const [IngestRequestUpsertsInner, _$IngestRequestUpsertsInner];

  @override
  final String wireName = r'IngestRequestUpsertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRequestUpsertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RecordType),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(int),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestRequestUpsertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngestRequestUpsertsInnerBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordType),
          ) as RecordType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.date = valueDes;
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
  IngestRequestUpsertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRequestUpsertsInnerBuilder();
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


