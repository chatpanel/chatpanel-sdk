//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/extract_context_response_skipped_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/extract_context_response_read_inner.dart';
import 'package:chatpanel/src/model/extract_context_response_attachment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_context_response.g.dart';

/// ExtractContextResponse
///
/// Properties:
/// * [attachment] 
/// * [read] 
/// * [skipped] 
/// * [how] 
/// * [budgetChars] 
/// * [provider] - `chatpanel-extract`.
/// * [ms] 
@BuiltValue()
abstract class ExtractContextResponse implements Built<ExtractContextResponse, ExtractContextResponseBuilder> {
  @BuiltValueField(wireName: r'attachment')
  ExtractContextResponseAttachment get attachment;

  @BuiltValueField(wireName: r'read')
  BuiltList<ExtractContextResponseReadInner> get read;

  @BuiltValueField(wireName: r'skipped')
  BuiltList<ExtractContextResponseSkippedInner> get skipped;

  @BuiltValueField(wireName: r'how')
  ExtractContextResponseHowEnum get how;
  // enum howEnum {  whole,  pages,  none,  };

  @BuiltValueField(wireName: r'budgetChars')
  int get budgetChars;

  /// `chatpanel-extract`.
  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'ms')
  num get ms;

  ExtractContextResponse._();

  factory ExtractContextResponse([void updates(ExtractContextResponseBuilder b)]) = _$ExtractContextResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtractContextResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtractContextResponse> get serializer => _$ExtractContextResponseSerializer();
}

class _$ExtractContextResponseSerializer implements PrimitiveSerializer<ExtractContextResponse> {
  @override
  final Iterable<Type> types = const [ExtractContextResponse, _$ExtractContextResponse];

  @override
  final String wireName = r'ExtractContextResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtractContextResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attachment';
    yield serializers.serialize(
      object.attachment,
      specifiedType: const FullType(ExtractContextResponseAttachment),
    );
    yield r'read';
    yield serializers.serialize(
      object.read,
      specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseReadInner)]),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseSkippedInner)]),
    );
    yield r'how';
    yield serializers.serialize(
      object.how,
      specifiedType: const FullType(ExtractContextResponseHowEnum),
    );
    yield r'budgetChars';
    yield serializers.serialize(
      object.budgetChars,
      specifiedType: const FullType(int),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'ms';
    yield serializers.serialize(
      object.ms,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtractContextResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtractContextResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExtractContextResponseAttachment),
          ) as ExtractContextResponseAttachment;
          result.attachment.replace(valueDes);
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseReadInner)]),
          ) as BuiltList<ExtractContextResponseReadInner>;
          result.read.replace(valueDes);
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExtractContextResponseSkippedInner)]),
          ) as BuiltList<ExtractContextResponseSkippedInner>;
          result.skipped.replace(valueDes);
          break;
        case r'how':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExtractContextResponseHowEnum),
          ) as ExtractContextResponseHowEnum;
          result.how = valueDes;
          break;
        case r'budgetChars':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.budgetChars = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtractContextResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtractContextResponseBuilder();
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


class ExtractContextResponseHowEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'whole')
  static const ExtractContextResponseHowEnum whole = _$extractContextResponseHowEnum_whole;
  @BuiltValueEnumConst(wireName: r'pages')
  static const ExtractContextResponseHowEnum pages = _$extractContextResponseHowEnum_pages;
  @BuiltValueEnumConst(wireName: r'none')
  static const ExtractContextResponseHowEnum none = _$extractContextResponseHowEnum_none;

  static Serializer<ExtractContextResponseHowEnum> get serializer => _$extractContextResponseHowEnumSerializer;

  const ExtractContextResponseHowEnum._(String name): super(name);

  static BuiltSet<ExtractContextResponseHowEnum> get values => _$extractContextResponseHowEnumValues;
  static ExtractContextResponseHowEnum valueOf(String name) => _$extractContextResponseHowEnumValueOf(name);
}

