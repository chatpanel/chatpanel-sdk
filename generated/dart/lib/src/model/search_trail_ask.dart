//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_trail_ask.g.dart';

/// SearchTrailAsk
///
/// Properties:
/// * [id] - The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`.
/// * [outcome] - `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all).
/// * [found] - How many results it returned.
/// * [status] - The HTTP status of a refusal (429, 403, …), when there was one.
/// * [timedOut] - It did not answer within its share of the budget.
/// * [network] - It failed at the network — no status at all.
@BuiltValue()
abstract class SearchTrailAsk implements Built<SearchTrailAsk, SearchTrailAskBuilder> {
  /// The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all).
  @BuiltValueField(wireName: r'outcome')
  String get outcome;

  /// How many results it returned.
  @BuiltValueField(wireName: r'found')
  int? get found;

  /// The HTTP status of a refusal (429, 403, …), when there was one.
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// It did not answer within its share of the budget.
  @BuiltValueField(wireName: r'timedOut')
  bool? get timedOut;

  /// It failed at the network — no status at all.
  @BuiltValueField(wireName: r'network')
  bool? get network;

  SearchTrailAsk._();

  factory SearchTrailAsk([void updates(SearchTrailAskBuilder b)]) = _$SearchTrailAsk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchTrailAskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchTrailAsk> get serializer => _$SearchTrailAskSerializer();
}

class _$SearchTrailAskSerializer implements PrimitiveSerializer<SearchTrailAsk> {
  @override
  final Iterable<Type> types = const [SearchTrailAsk, _$SearchTrailAsk];

  @override
  final String wireName = r'SearchTrailAsk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchTrailAsk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'outcome';
    yield serializers.serialize(
      object.outcome,
      specifiedType: const FullType(String),
    );
    if (object.found != null) {
      yield r'found';
      yield serializers.serialize(
        object.found,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.timedOut != null) {
      yield r'timedOut';
      yield serializers.serialize(
        object.timedOut,
        specifiedType: const FullType(bool),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchTrailAsk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchTrailAskBuilder result,
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
        case r'outcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outcome = valueDes;
          break;
        case r'found':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.found = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'timedOut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.timedOut = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.network = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchTrailAsk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTrailAskBuilder();
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


