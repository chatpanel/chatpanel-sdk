//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retrieval_search_alias200_response_data_inner.g.dart';

/// RetrievalSearchAlias200ResponseDataInner
///
/// Properties:
/// * [url] 
/// * [title] 
/// * [description] 
/// * [content] 
/// * [publishedTime] 
@BuiltValue()
abstract class RetrievalSearchAlias200ResponseDataInner implements Built<RetrievalSearchAlias200ResponseDataInner, RetrievalSearchAlias200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'content')
  String get content;

  @BuiltValueField(wireName: r'publishedTime')
  String? get publishedTime;

  RetrievalSearchAlias200ResponseDataInner._();

  factory RetrievalSearchAlias200ResponseDataInner([void updates(RetrievalSearchAlias200ResponseDataInnerBuilder b)]) = _$RetrievalSearchAlias200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetrievalSearchAlias200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetrievalSearchAlias200ResponseDataInner> get serializer => _$RetrievalSearchAlias200ResponseDataInnerSerializer();
}

class _$RetrievalSearchAlias200ResponseDataInnerSerializer implements PrimitiveSerializer<RetrievalSearchAlias200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [RetrievalSearchAlias200ResponseDataInner, _$RetrievalSearchAlias200ResponseDataInner];

  @override
  final String wireName = r'RetrievalSearchAlias200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetrievalSearchAlias200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.publishedTime != null) {
      yield r'publishedTime';
      yield serializers.serialize(
        object.publishedTime,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetrievalSearchAlias200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RetrievalSearchAlias200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'publishedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publishedTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetrievalSearchAlias200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetrievalSearchAlias200ResponseDataInnerBuilder();
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


