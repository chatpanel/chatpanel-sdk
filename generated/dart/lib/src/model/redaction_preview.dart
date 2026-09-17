//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'redaction_preview.g.dart';

/// RedactionPreview
///
/// Properties:
/// * [text] - What the model would receive.
/// * [count] 
/// * [sanitized] 
/// * [tier] 
/// * [entities] - Placeholder tokens and their types — never the real values.
/// * [detector] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
@BuiltValue()
abstract class RedactionPreview implements Built<RedactionPreview, RedactionPreviewBuilder> {
  /// What the model would receive.
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'sanitized')
  int? get sanitized;

  @BuiltValueField(wireName: r'tier')
  RedactionPreviewTierEnum? get tier;
  // enum tierEnum {  basic,  full,  };

  /// Placeholder tokens and their types — never the real values.
  @BuiltValueField(wireName: r'entities')
  BuiltList<BuiltMap<String, JsonObject?>>? get entities;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'detector')
  BuiltMap<String, JsonObject?>? get detector;

  RedactionPreview._();

  factory RedactionPreview([void updates(RedactionPreviewBuilder b)]) = _$RedactionPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RedactionPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RedactionPreview> get serializer => _$RedactionPreviewSerializer();
}

class _$RedactionPreviewSerializer implements PrimitiveSerializer<RedactionPreview> {
  @override
  final Iterable<Type> types = const [RedactionPreview, _$RedactionPreview];

  @override
  final String wireName = r'RedactionPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RedactionPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.sanitized != null) {
      yield r'sanitized';
      yield serializers.serialize(
        object.sanitized,
        specifiedType: const FullType(int),
      );
    }
    if (object.tier != null) {
      yield r'tier';
      yield serializers.serialize(
        object.tier,
        specifiedType: const FullType(RedactionPreviewTierEnum),
      );
    }
    if (object.entities != null) {
      yield r'entities';
      yield serializers.serialize(
        object.entities,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
    if (object.detector != null) {
      yield r'detector';
      yield serializers.serialize(
        object.detector,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RedactionPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RedactionPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'sanitized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sanitized = valueDes;
          break;
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RedactionPreviewTierEnum),
          ) as RedactionPreviewTierEnum?;
          if (valueDes == null) continue;
          result.tier = valueDes;
          break;
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.entities.replace(valueDes);
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.detector.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RedactionPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedactionPreviewBuilder();
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


class RedactionPreviewTierEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'basic')
  static const RedactionPreviewTierEnum basic = _$redactionPreviewTierEnum_basic;
  @BuiltValueEnumConst(wireName: r'full')
  static const RedactionPreviewTierEnum full = _$redactionPreviewTierEnum_full;

  static Serializer<RedactionPreviewTierEnum> get serializer => _$redactionPreviewTierEnumSerializer;

  const RedactionPreviewTierEnum._(String name): super(name);

  static BuiltSet<RedactionPreviewTierEnum> get values => _$redactionPreviewTierEnumValues;
  static RedactionPreviewTierEnum valueOf(String name) => _$redactionPreviewTierEnumValueOf(name);
}

