//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_restriction.g.dart';

/// ReadRestriction
///
/// Properties:
/// * [reason] - `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent.
/// * [detail] 
@BuiltValue()
abstract class ReadRestriction implements Built<ReadRestriction, ReadRestrictionBuilder> {
  /// `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent.
  @BuiltValueField(wireName: r'reason')
  ReadRestrictionReasonEnum get reason;
  // enum reasonEnum {  login,  paywall,  rate_limited,  robots,  tdm,  };

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  ReadRestriction._();

  factory ReadRestriction([void updates(ReadRestrictionBuilder b)]) = _$ReadRestriction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadRestrictionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadRestriction> get serializer => _$ReadRestrictionSerializer();
}

class _$ReadRestrictionSerializer implements PrimitiveSerializer<ReadRestriction> {
  @override
  final Iterable<Type> types = const [ReadRestriction, _$ReadRestriction];

  @override
  final String wireName = r'ReadRestriction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadRestriction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(ReadRestrictionReasonEnum),
    );
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadRestriction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadRestrictionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadRestrictionReasonEnum),
          ) as ReadRestrictionReasonEnum;
          result.reason = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadRestriction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadRestrictionBuilder();
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


/// `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent.
class ReadRestrictionReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'login')
  static const ReadRestrictionReasonEnum login = _$readRestrictionReasonEnum_login;
  @BuiltValueEnumConst(wireName: r'paywall')
  static const ReadRestrictionReasonEnum paywall = _$readRestrictionReasonEnum_paywall;
  @BuiltValueEnumConst(wireName: r'rate_limited')
  static const ReadRestrictionReasonEnum rateLimited = _$readRestrictionReasonEnum_rateLimited;
  @BuiltValueEnumConst(wireName: r'robots')
  static const ReadRestrictionReasonEnum robots = _$readRestrictionReasonEnum_robots;
  @BuiltValueEnumConst(wireName: r'tdm')
  static const ReadRestrictionReasonEnum tdm = _$readRestrictionReasonEnum_tdm;

  static Serializer<ReadRestrictionReasonEnum> get serializer => _$readRestrictionReasonEnumSerializer;

  const ReadRestrictionReasonEnum._(String name): super(name);

  static BuiltSet<ReadRestrictionReasonEnum> get values => _$readRestrictionReasonEnumValues;
  static ReadRestrictionReasonEnum valueOf(String name) => _$readRestrictionReasonEnumValueOf(name);
}

