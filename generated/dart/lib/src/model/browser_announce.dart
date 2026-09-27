//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_announce.g.dart';

/// BrowserAnnounce
///
/// Properties:
/// * [session] 
/// * [browser] 
/// * [extension_] 
/// * [spec] 
/// * [system] 
@BuiltValue()
abstract class BrowserAnnounce implements Built<BrowserAnnounce, BrowserAnnounceBuilder> {
  @BuiltValueField(wireName: r'session')
  String get session;

  @BuiltValueField(wireName: r'browser')
  BrowserInfo? get browser;

  @BuiltValueField(wireName: r'extension')
  String? get extension_;

  @BuiltValueField(wireName: r'spec')
  BuiltMap<String, JsonObject?> get spec;

  @BuiltValueField(wireName: r'system')
  String? get system;

  BrowserAnnounce._();

  factory BrowserAnnounce([void updates(BrowserAnnounceBuilder b)]) = _$BrowserAnnounce;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserAnnounceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserAnnounce> get serializer => _$BrowserAnnounceSerializer();
}

class _$BrowserAnnounceSerializer implements PrimitiveSerializer<BrowserAnnounce> {
  @override
  final Iterable<Type> types = const [BrowserAnnounce, _$BrowserAnnounce];

  @override
  final String wireName = r'BrowserAnnounce';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserAnnounce object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session';
    yield serializers.serialize(
      object.session,
      specifiedType: const FullType(String),
    );
    if (object.browser != null) {
      yield r'browser';
      yield serializers.serialize(
        object.browser,
        specifiedType: const FullType(BrowserInfo),
      );
    }
    if (object.extension_ != null) {
      yield r'extension';
      yield serializers.serialize(
        object.extension_,
        specifiedType: const FullType(String),
      );
    }
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.system != null) {
      yield r'system';
      yield serializers.serialize(
        object.system,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserAnnounce object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserAnnounceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.session = valueDes;
          break;
        case r'browser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BrowserInfo),
          ) as BrowserInfo?;
          if (valueDes == null) continue;
          result.browser.replace(valueDes);
          break;
        case r'extension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.extension_ = valueDes;
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.spec.replace(valueDes);
          break;
        case r'system':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.system = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserAnnounce deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserAnnounceBuilder();
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


