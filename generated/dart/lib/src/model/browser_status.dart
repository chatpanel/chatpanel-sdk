//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/browser_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_status.g.dart';

/// BrowserStatus
///
/// Properties:
/// * [connected] 
/// * [pending] - Calls waiting on the browser.
/// * [waiting] - A browser holds the stream but has not announced yet.
/// * [browser] 
/// * [extension_] - The extension's version.
/// * [spec] - The page tool: { name, description, parameters } — hand it to a model as it is.
/// * [system] - The guidance that goes with the tool.
/// * [actions] - The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments.
@BuiltValue()
abstract class BrowserStatus implements Built<BrowserStatus, BrowserStatusBuilder> {
  @BuiltValueField(wireName: r'connected')
  bool get connected;

  /// Calls waiting on the browser.
  @BuiltValueField(wireName: r'pending')
  int get pending;

  /// A browser holds the stream but has not announced yet.
  @BuiltValueField(wireName: r'waiting')
  bool? get waiting;

  @BuiltValueField(wireName: r'browser')
  BrowserInfo? get browser;

  /// The extension's version.
  @BuiltValueField(wireName: r'extension')
  String? get extension_;

  /// The page tool: { name, description, parameters } — hand it to a model as it is.
  @BuiltValueField(wireName: r'spec')
  BuiltMap<String, JsonObject?>? get spec;

  /// The guidance that goes with the tool.
  @BuiltValueField(wireName: r'system')
  String? get system;

  /// The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments.
  @BuiltValueField(wireName: r'actions')
  BuiltList<BuiltMap<String, JsonObject?>>? get actions;

  BrowserStatus._();

  factory BrowserStatus([void updates(BrowserStatusBuilder b)]) = _$BrowserStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserStatus> get serializer => _$BrowserStatusSerializer();
}

class _$BrowserStatusSerializer implements PrimitiveSerializer<BrowserStatus> {
  @override
  final Iterable<Type> types = const [BrowserStatus, _$BrowserStatus];

  @override
  final String wireName = r'BrowserStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connected';
    yield serializers.serialize(
      object.connected,
      specifiedType: const FullType(bool),
    );
    yield r'pending';
    yield serializers.serialize(
      object.pending,
      specifiedType: const FullType(int),
    );
    if (object.waiting != null) {
      yield r'waiting';
      yield serializers.serialize(
        object.waiting,
        specifiedType: const FullType(bool),
      );
    }
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
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.system != null) {
      yield r'system';
      yield serializers.serialize(
        object.system,
        specifiedType: const FullType(String),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.connected = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pending = valueDes;
          break;
        case r'waiting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.waiting = valueDes;
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
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
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
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserStatusBuilder();
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


