//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/record_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_filters.g.dart';

/// SearchFilters
///
/// Properties:
/// * [type] 
/// * [since] - ms since epoch
/// * [before] - ms since epoch
/// * [limit] 
@BuiltValue(instantiable: false)
abstract class SearchFilters  {
  @BuiltValueField(wireName: r'type')
  RecordType? get type;
  // enum typeEnum {  chat,  note,  meeting,  brief,  };

  /// ms since epoch
  @BuiltValueField(wireName: r'since')
  int? get since;

  /// ms since epoch
  @BuiltValueField(wireName: r'before')
  int? get before;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchFilters> get serializer => _$SearchFiltersSerializer();
}

class _$SearchFiltersSerializer implements PrimitiveSerializer<SearchFilters> {
  @override
  final Iterable<Type> types = const [SearchFilters];

  @override
  final String wireName = r'SearchFilters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RecordType),
      );
    }
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType(int),
      );
    }
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SearchFilters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SearchFilters)) as $SearchFilters;
  }
}


/// a concrete implementation of [SearchFilters], since [SearchFilters] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SearchFilters implements SearchFilters, Built<$SearchFilters, $SearchFiltersBuilder> {
  $SearchFilters._();

  factory $SearchFilters([void Function($SearchFiltersBuilder)? updates]) = _$$SearchFilters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SearchFiltersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SearchFilters> get serializer => _$$SearchFiltersSerializer();
}

class _$$SearchFiltersSerializer implements PrimitiveSerializer<$SearchFilters> {
  @override
  final Iterable<Type> types = const [$SearchFilters, _$$SearchFilters];

  @override
  final String wireName = r'$SearchFilters';

  @override
  Object serialize(
    Serializers serializers,
    $SearchFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SearchFilters))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchFiltersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordType),
          ) as RecordType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SearchFilters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SearchFiltersBuilder();
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

