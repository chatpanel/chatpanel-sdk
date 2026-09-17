//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_status_lossless.g.dart';

/// HistoryStatusLossless
///
/// Properties:
/// * [records] 
/// * [newest] 
@BuiltValue()
abstract class HistoryStatusLossless implements Built<HistoryStatusLossless, HistoryStatusLosslessBuilder> {
  @BuiltValueField(wireName: r'records')
  int? get records;

  @BuiltValueField(wireName: r'newest')
  int? get newest;

  HistoryStatusLossless._();

  factory HistoryStatusLossless([void updates(HistoryStatusLosslessBuilder b)]) = _$HistoryStatusLossless;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryStatusLosslessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryStatusLossless> get serializer => _$HistoryStatusLosslessSerializer();
}

class _$HistoryStatusLosslessSerializer implements PrimitiveSerializer<HistoryStatusLossless> {
  @override
  final Iterable<Type> types = const [HistoryStatusLossless, _$HistoryStatusLossless];

  @override
  final String wireName = r'HistoryStatusLossless';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryStatusLossless object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType(int),
      );
    }
    if (object.newest != null) {
      yield r'newest';
      yield serializers.serialize(
        object.newest,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryStatusLossless object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryStatusLosslessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.records = valueDes;
          break;
        case r'newest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryStatusLossless deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryStatusLosslessBuilder();
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


