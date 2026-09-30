//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_plan_live.g.dart';

/// Heatwatch's answer; null without it.
///
/// Properties:
/// * [fits] 
/// * [needMB] 
/// * [availableMB] 
/// * [shortfallMB] 
/// * [fitsGPULimit] 
/// * [gpuWiredLimitMB] 
/// * [close] - The apps to close to make room.
@BuiltValue()
abstract class RuntimePlanLive implements Built<RuntimePlanLive, RuntimePlanLiveBuilder> {
  @BuiltValueField(wireName: r'fits')
  bool? get fits;

  @BuiltValueField(wireName: r'needMB')
  int? get needMB;

  @BuiltValueField(wireName: r'availableMB')
  int? get availableMB;

  @BuiltValueField(wireName: r'shortfallMB')
  int? get shortfallMB;

  @BuiltValueField(wireName: r'fitsGPULimit')
  bool? get fitsGPULimit;

  @BuiltValueField(wireName: r'gpuWiredLimitMB')
  int? get gpuWiredLimitMB;

  /// The apps to close to make room.
  @BuiltValueField(wireName: r'close')
  BuiltList<String>? get close;

  RuntimePlanLive._();

  factory RuntimePlanLive([void updates(RuntimePlanLiveBuilder b)]) = _$RuntimePlanLive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuntimePlanLiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuntimePlanLive> get serializer => _$RuntimePlanLiveSerializer();
}

class _$RuntimePlanLiveSerializer implements PrimitiveSerializer<RuntimePlanLive> {
  @override
  final Iterable<Type> types = const [RuntimePlanLive, _$RuntimePlanLive];

  @override
  final String wireName = r'RuntimePlanLive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuntimePlanLive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fits != null) {
      yield r'fits';
      yield serializers.serialize(
        object.fits,
        specifiedType: const FullType(bool),
      );
    }
    if (object.needMB != null) {
      yield r'needMB';
      yield serializers.serialize(
        object.needMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.availableMB != null) {
      yield r'availableMB';
      yield serializers.serialize(
        object.availableMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.shortfallMB != null) {
      yield r'shortfallMB';
      yield serializers.serialize(
        object.shortfallMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.fitsGPULimit != null) {
      yield r'fitsGPULimit';
      yield serializers.serialize(
        object.fitsGPULimit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.gpuWiredLimitMB != null) {
      yield r'gpuWiredLimitMB';
      yield serializers.serialize(
        object.gpuWiredLimitMB,
        specifiedType: const FullType(int),
      );
    }
    if (object.close != null) {
      yield r'close';
      yield serializers.serialize(
        object.close,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuntimePlanLive object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuntimePlanLiveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fits = valueDes;
          break;
        case r'needMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.needMB = valueDes;
          break;
        case r'availableMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.availableMB = valueDes;
          break;
        case r'shortfallMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.shortfallMB = valueDes;
          break;
        case r'fitsGPULimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fitsGPULimit = valueDes;
          break;
        case r'gpuWiredLimitMB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.gpuWiredLimitMB = valueDes;
          break;
        case r'close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.close.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuntimePlanLive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuntimePlanLiveBuilder();
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


