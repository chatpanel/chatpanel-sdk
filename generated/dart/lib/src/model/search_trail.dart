//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/search_trail_resting.dart';
import 'package:chatpanel/src/model/search_trail_ask.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_trail.g.dart';

/// What the search did — each provider and engine asked, what it did, which are resting — and how it ended. Optional on every response that carries it; an older gateway sends none. Since gateway 0.79.0.
///
/// Properties:
/// * [status] - How it ended: `answered` (results came back) · `nothing` (engines answered, none had anything) · `blocked` (every engine asked refused or timed out) · `resting` (nothing was asked: every engine is resting after earlier refusals) · `offline` (every engine failed at the network) · `no-engines`. A client meeting a value it does not know treats it as no results.
/// * [asked] - In the order asked: the provider tried first (`searxng`, or each engine and API `serp` asked), then the other provider when the first came back empty.
/// * [resting] - Engines resting after refusing earlier, and until when.
@BuiltValue()
abstract class SearchTrail implements Built<SearchTrail, SearchTrailBuilder> {
  /// How it ended: `answered` (results came back) · `nothing` (engines answered, none had anything) · `blocked` (every engine asked refused or timed out) · `resting` (nothing was asked: every engine is resting after earlier refusals) · `offline` (every engine failed at the network) · `no-engines`. A client meeting a value it does not know treats it as no results.
  @BuiltValueField(wireName: r'status')
  String get status;

  /// In the order asked: the provider tried first (`searxng`, or each engine and API `serp` asked), then the other provider when the first came back empty.
  @BuiltValueField(wireName: r'asked')
  BuiltList<SearchTrailAsk> get asked;

  /// Engines resting after refusing earlier, and until when.
  @BuiltValueField(wireName: r'resting')
  BuiltList<SearchTrailResting> get resting;

  SearchTrail._();

  factory SearchTrail([void updates(SearchTrailBuilder b)]) = _$SearchTrail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchTrailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchTrail> get serializer => _$SearchTrailSerializer();
}

class _$SearchTrailSerializer implements PrimitiveSerializer<SearchTrail> {
  @override
  final Iterable<Type> types = const [SearchTrail, _$SearchTrail];

  @override
  final String wireName = r'SearchTrail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchTrail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'asked';
    yield serializers.serialize(
      object.asked,
      specifiedType: const FullType(BuiltList, [FullType(SearchTrailAsk)]),
    );
    yield r'resting';
    yield serializers.serialize(
      object.resting,
      specifiedType: const FullType(BuiltList, [FullType(SearchTrailResting)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchTrail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchTrailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'asked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SearchTrailAsk)]),
          ) as BuiltList<SearchTrailAsk>;
          result.asked.replace(valueDes);
          break;
        case r'resting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SearchTrailResting)]),
          ) as BuiltList<SearchTrailResting>;
          result.resting.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchTrail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTrailBuilder();
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


