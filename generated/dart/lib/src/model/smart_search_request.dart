//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/record_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/search_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smart_search_request.g.dart';

/// SmartSearchRequest
///
/// Properties:
/// * [type] 
/// * [since] - ms since epoch
/// * [before] - ms since epoch
/// * [limit] 
/// * [question] - The natural-language question.
/// * [queries] - 2–4 keyword phrasings of your own; they lead.
/// * [maxQueries] 
@BuiltValue()
abstract class SmartSearchRequest implements SearchFilters, Built<SmartSearchRequest, SmartSearchRequestBuilder> {
  /// The natural-language question.
  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'maxQueries')
  int? get maxQueries;

  /// 2–4 keyword phrasings of your own; they lead.
  @BuiltValueField(wireName: r'queries')
  BuiltList<String>? get queries;

  SmartSearchRequest._();

  factory SmartSearchRequest([void updates(SmartSearchRequestBuilder b)]) = _$SmartSearchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmartSearchRequestBuilder b) => b
      ..maxQueries = 4
      ..limit = 10;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmartSearchRequest> get serializer => _$SmartSearchRequestSerializer();
}

class _$SmartSearchRequestSerializer implements PrimitiveSerializer<SmartSearchRequest> {
  @override
  final Iterable<Type> types = const [SmartSearchRequest, _$SmartSearchRequest];

  @override
  final String wireName = r'SmartSearchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmartSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxQueries != null) {
      yield r'maxQueries';
      yield serializers.serialize(
        object.maxQueries,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RecordType),
      );
    }
    if (object.queries != null) {
      yield r'queries';
      yield serializers.serialize(
        object.queries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmartSearchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SmartSearchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'maxQueries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxQueries = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordType),
          ) as RecordType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.queries.replace(valueDes);
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmartSearchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmartSearchRequestBuilder();
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


