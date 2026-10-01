//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_trail_resting.g.dart';

/// SearchTrailResting
///
/// Properties:
/// * [id] - The resting engine.
/// * [until] - When it may be asked again, ms since epoch.
@BuiltValue()
abstract class SearchTrailResting implements Built<SearchTrailResting, SearchTrailRestingBuilder> {
  /// The resting engine.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// When it may be asked again, ms since epoch.
  @BuiltValueField(wireName: r'until')
  int get until;

  SearchTrailResting._();

  factory SearchTrailResting([void updates(SearchTrailRestingBuilder b)]) = _$SearchTrailResting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchTrailRestingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchTrailResting> get serializer => _$SearchTrailRestingSerializer();
}

class _$SearchTrailRestingSerializer implements PrimitiveSerializer<SearchTrailResting> {
  @override
  final Iterable<Type> types = const [SearchTrailResting, _$SearchTrailResting];

  @override
  final String wireName = r'SearchTrailResting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchTrailResting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'until';
    yield serializers.serialize(
      object.until,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchTrailResting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchTrailRestingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'until':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.until = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchTrailResting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTrailRestingBuilder();
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


