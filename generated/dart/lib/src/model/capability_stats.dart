//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capability_stats.g.dart';

/// CapabilityStats
///
/// Properties:
/// * [calls] 
/// * [p50Ms] 
/// * [p95Ms] 
/// * [maxMs] 
/// * [lastMs] 
/// * [charsPerSec] 
@BuiltValue()
abstract class CapabilityStats implements Built<CapabilityStats, CapabilityStatsBuilder> {
  @BuiltValueField(wireName: r'calls')
  int get calls;

  @BuiltValueField(wireName: r'p50Ms')
  num? get p50Ms;

  @BuiltValueField(wireName: r'p95Ms')
  num? get p95Ms;

  @BuiltValueField(wireName: r'maxMs')
  num? get maxMs;

  @BuiltValueField(wireName: r'lastMs')
  num? get lastMs;

  @BuiltValueField(wireName: r'charsPerSec')
  num? get charsPerSec;

  CapabilityStats._();

  factory CapabilityStats([void updates(CapabilityStatsBuilder b)]) = _$CapabilityStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CapabilityStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CapabilityStats> get serializer => _$CapabilityStatsSerializer();
}

class _$CapabilityStatsSerializer implements PrimitiveSerializer<CapabilityStats> {
  @override
  final Iterable<Type> types = const [CapabilityStats, _$CapabilityStats];

  @override
  final String wireName = r'CapabilityStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CapabilityStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'calls';
    yield serializers.serialize(
      object.calls,
      specifiedType: const FullType(int),
    );
    if (object.p50Ms != null) {
      yield r'p50Ms';
      yield serializers.serialize(
        object.p50Ms,
        specifiedType: const FullType(num),
      );
    }
    if (object.p95Ms != null) {
      yield r'p95Ms';
      yield serializers.serialize(
        object.p95Ms,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxMs != null) {
      yield r'maxMs';
      yield serializers.serialize(
        object.maxMs,
        specifiedType: const FullType(num),
      );
    }
    if (object.lastMs != null) {
      yield r'lastMs';
      yield serializers.serialize(
        object.lastMs,
        specifiedType: const FullType(num),
      );
    }
    if (object.charsPerSec != null) {
      yield r'charsPerSec';
      yield serializers.serialize(
        object.charsPerSec,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CapabilityStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CapabilityStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'calls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.calls = valueDes;
          break;
        case r'p50Ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p50Ms = valueDes;
          break;
        case r'p95Ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p95Ms = valueDes;
          break;
        case r'maxMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxMs = valueDes;
          break;
        case r'lastMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lastMs = valueDes;
          break;
        case r'charsPerSec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.charsPerSec = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CapabilityStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapabilityStatsBuilder();
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


