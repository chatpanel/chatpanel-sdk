//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_add_response_skipped_inner.g.dart';

/// KbAddResponseSkippedInner
///
/// Properties:
/// * [path] 
/// * [url] 
/// * [why] 
@BuiltValue()
abstract class KbAddResponseSkippedInner implements Built<KbAddResponseSkippedInner, KbAddResponseSkippedInnerBuilder> {
  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'why')
  String? get why;

  KbAddResponseSkippedInner._();

  factory KbAddResponseSkippedInner([void updates(KbAddResponseSkippedInnerBuilder b)]) = _$KbAddResponseSkippedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAddResponseSkippedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAddResponseSkippedInner> get serializer => _$KbAddResponseSkippedInnerSerializer();
}

class _$KbAddResponseSkippedInnerSerializer implements PrimitiveSerializer<KbAddResponseSkippedInner> {
  @override
  final Iterable<Type> types = const [KbAddResponseSkippedInner, _$KbAddResponseSkippedInner];

  @override
  final String wireName = r'KbAddResponseSkippedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAddResponseSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
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
    KbAddResponseSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAddResponseSkippedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
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
  KbAddResponseSkippedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAddResponseSkippedInnerBuilder();
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


