//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_action_result.g.dart';

/// RuntimeActionResult
///
/// Properties:
/// * [ok] 
/// * [error] 
/// * [already] 
/// * [url] 
/// * [answering] 
/// * [install] - A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
/// * [provides] - The capabilities the service now stands behind (gateway 0.20+).
/// * [model] - The model the container runs, on a start or a model pick (gateway 0.22+).
/// * [restarted] - A model pick re-created a running container.
/// * [note] - A model pick that fits but is tight for the engine's memory.
@BuiltValue()
abstract class RuntimeActionResult implements Built<RuntimeActionResult, RuntimeActionResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'already')
  bool? get already;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'answering')
  bool? get answering;

  /// A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
  @BuiltValueField(wireName: r'install')
  BuiltMap<String, JsonObject?>? get install;

  /// The capabilities the service now stands behind (gateway 0.20+).
  @BuiltValueField(wireName: r'provides')
  BuiltList<String>? get provides;

  /// The model the container runs, on a start or a model pick (gateway 0.22+).
  @BuiltValueField(wireName: r'model')
  String? get model;

  /// A model pick re-created a running container.
  @BuiltValueField(wireName: r'restarted')
  bool? get restarted;

  /// A model pick that fits but is tight for the engine's memory.
  @BuiltValueField(wireName: r'note')
  String? get note;

  RuntimeActionResult._();

  factory RuntimeActionResult([void updates(RuntimeActionResultBuilder b)]) = _$RuntimeActionResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimeActionResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimeActionResult> get serializer => _$RuntimeActionResultSerializer();
}

class _$RuntimeActionResultSerializer implements PrimitiveSerializer<RuntimeActionResult> {
  @override
  final Iterable<Type> types = const [RuntimeActionResult, _$RuntimeActionResult];

  @override
  final String wireName = r'RuntimeActionResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimeActionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.already != null) {
      yield r'already';
      yield serializers.serialize(
        object.already,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.answering != null) {
      yield r'answering';
      yield serializers.serialize(
        object.answering,
        specifiedType: const FullType(bool),
      );
    }
    if (object.install != null) {
      yield r'install';
      yield serializers.serialize(
        object.install,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.provides != null) {
      yield r'provides';
      yield serializers.serialize(
        object.provides,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.restarted != null) {
      yield r'restarted';
      yield serializers.serialize(
        object.restarted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimeActionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimeActionResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'already':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.already = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'answering':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.answering = valueDes;
          break;
        case r'install':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.install.replace(valueDes);
          break;
        case r'provides':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.provides.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'restarted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.restarted = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimeActionResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimeActionResultBuilder();
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


