//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_info.g.dart';

/// BrowserInfo
///
/// Properties:
/// * [kind] 
/// * [version] 
@BuiltValue()
abstract class BrowserInfo implements Built<BrowserInfo, BrowserInfoBuilder> {
  @BuiltValueField(wireName: r'kind')
  BrowserInfoKindEnum get kind;
  // enum kindEnum {  chrome,  edge,  firefox,  brave,  opera,  chromium,  other,  };

  @BuiltValueField(wireName: r'version')
  String? get version;

  BrowserInfo._();

  factory BrowserInfo([void updates(BrowserInfoBuilder b)]) = _$BrowserInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserInfo> get serializer => _$BrowserInfoSerializer();
}

class _$BrowserInfoSerializer implements PrimitiveSerializer<BrowserInfo> {
  @override
  final Iterable<Type> types = const [BrowserInfo, _$BrowserInfo];

  @override
  final String wireName = r'BrowserInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(BrowserInfoKindEnum),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BrowserInfoKindEnum),
          ) as BrowserInfoKindEnum;
          result.kind = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserInfoBuilder();
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


class BrowserInfoKindEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'chrome')
  static const BrowserInfoKindEnum chrome = _$browserInfoKindEnum_chrome;
  @BuiltValueEnumConst(wireName: r'edge')
  static const BrowserInfoKindEnum edge = _$browserInfoKindEnum_edge;
  @BuiltValueEnumConst(wireName: r'firefox')
  static const BrowserInfoKindEnum firefox = _$browserInfoKindEnum_firefox;
  @BuiltValueEnumConst(wireName: r'brave')
  static const BrowserInfoKindEnum brave = _$browserInfoKindEnum_brave;
  @BuiltValueEnumConst(wireName: r'opera')
  static const BrowserInfoKindEnum opera = _$browserInfoKindEnum_opera;
  @BuiltValueEnumConst(wireName: r'chromium')
  static const BrowserInfoKindEnum chromium = _$browserInfoKindEnum_chromium;
  @BuiltValueEnumConst(wireName: r'other')
  static const BrowserInfoKindEnum other = _$browserInfoKindEnum_other;

  static Serializer<BrowserInfoKindEnum> get serializer => _$browserInfoKindEnumSerializer;

  const BrowserInfoKindEnum._(String name): super(name);

  static BuiltSet<BrowserInfoKindEnum> get values => _$browserInfoKindEnumValues;
  static BrowserInfoKindEnum valueOf(String name) => _$browserInfoKindEnumValueOf(name);
}

