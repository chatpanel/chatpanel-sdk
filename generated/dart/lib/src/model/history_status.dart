//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/history_status_lossless.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_status.g.dart';

/// HistoryStatus
///
/// Properties:
/// * [ok] 
/// * [size] 
/// * [newest] 
/// * [bytes] 
/// * [lossless] 
@BuiltValue()
abstract class HistoryStatus implements Built<HistoryStatus, HistoryStatusBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'size')
  int get size;

  @BuiltValueField(wireName: r'newest')
  int? get newest;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'lossless')
  HistoryStatusLossless? get lossless;

  HistoryStatus._();

  factory HistoryStatus([void updates(HistoryStatusBuilder b)]) = _$HistoryStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryStatus> get serializer => _$HistoryStatusSerializer();
}

class _$HistoryStatusSerializer implements PrimitiveSerializer<HistoryStatus> {
  @override
  final Iterable<Type> types = const [HistoryStatus, _$HistoryStatus];

  @override
  final String wireName = r'HistoryStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.lossless != null) {
      yield r'lossless';
      yield serializers.serialize(
        object.lossless,
        specifiedType: const FullType.nullable(HistoryStatusLossless),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryStatusBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'lossless':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HistoryStatusLossless),
          ) as HistoryStatusLossless?;
          if (valueDes == null) continue;
          result.lossless.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryStatusBuilder();
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


