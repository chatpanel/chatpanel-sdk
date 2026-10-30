//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_response_skipped_inner.g.dart';

/// ExtractContextResponseSkippedInner
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [why] 
@BuiltValue()
abstract class ExtractContextResponseSkippedInner implements Built<ExtractContextResponseSkippedInner, ExtractContextResponseSkippedInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'why')
  String? get why;

  ExtractContextResponseSkippedInner._();

  factory ExtractContextResponseSkippedInner([void updates(ExtractContextResponseSkippedInnerBuilder b)]) = _$ExtractContextResponseSkippedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextResponseSkippedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextResponseSkippedInner> get serializer => _$ExtractContextResponseSkippedInnerSerializer();
}

class _$ExtractContextResponseSkippedInnerSerializer implements PrimitiveSerializer<ExtractContextResponseSkippedInner> {
  @override
  final Iterable<Type> types = const [ExtractContextResponseSkippedInner, _$ExtractContextResponseSkippedInner];

  @override
  final String wireName = r'ExtractContextResponseSkippedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextResponseSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.why != null) {
      yield r'why';
      yield serializers.serialize(
        object.why,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextResponseSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextResponseSkippedInnerBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'why':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.why = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextResponseSkippedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextResponseSkippedInnerBuilder();
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


