//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'browser_call.g.dart';

/// BrowserCall
///
/// Properties:
/// * [action] - A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe…
/// * [args] 
/// * [task] - What the person asked for — shown to them when the browser asks to be used.
/// * [timeoutMs] 
@BuiltValue()
abstract class BrowserCall implements Built<BrowserCall, BrowserCallBuilder> {
  /// A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe…
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'args')
  BuiltMap<String, JsonObject?>? get args;

  /// What the person asked for — shown to them when the browser asks to be used.
  @BuiltValueField(wireName: r'task')
  String? get task;

  @BuiltValueField(wireName: r'timeoutMs')
  int? get timeoutMs;

  BrowserCall._();

  factory BrowserCall([void updates(BrowserCallBuilder b)]) = _$BrowserCall;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrowserCallBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrowserCall> get serializer => _$BrowserCallSerializer();
}

class _$BrowserCallSerializer implements PrimitiveSerializer<BrowserCall> {
  @override
  final Iterable<Type> types = const [BrowserCall, _$BrowserCall];

  @override
  final String wireName = r'BrowserCall';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrowserCall object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    if (object.args != null) {
      yield r'args';
      yield serializers.serialize(
        object.args,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.task != null) {
      yield r'task';
      yield serializers.serialize(
        object.task,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeoutMs != null) {
      yield r'timeoutMs';
      yield serializers.serialize(
        object.timeoutMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BrowserCall object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrowserCallBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'args':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.args.replace(valueDes);
          break;
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.task = valueDes;
          break;
        case r'timeoutMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timeoutMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BrowserCall deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrowserCallBuilder();
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


