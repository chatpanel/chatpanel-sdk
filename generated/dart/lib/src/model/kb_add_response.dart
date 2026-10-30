//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/kb_status.dart';
import 'package:chatpanel/src/model/kb_add_response_skipped_inner.dart';
import 'package:chatpanel/src/model/kb_add_response_added_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_add_response.g.dart';

/// KbAddResponse
///
/// Properties:
/// * [added] 
/// * [skipped] 
/// * [embedded] - Passages given a vector in this call.
/// * [kb] 
/// * [ms] 
@BuiltValue()
abstract class KbAddResponse implements Built<KbAddResponse, KbAddResponseBuilder> {
  @BuiltValueField(wireName: r'added')
  BuiltList<KbAddResponseAddedInner> get added;

  @BuiltValueField(wireName: r'skipped')
  BuiltList<KbAddResponseSkippedInner> get skipped;

  /// Passages given a vector in this call.
  @BuiltValueField(wireName: r'embedded')
  int? get embedded;

  @BuiltValueField(wireName: r'kb')
  KbStatus get kb;

  @BuiltValueField(wireName: r'ms')
  num? get ms;

  KbAddResponse._();

  factory KbAddResponse([void updates(KbAddResponseBuilder b)]) = _$KbAddResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAddResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAddResponse> get serializer => _$KbAddResponseSerializer();
}

class _$KbAddResponseSerializer implements PrimitiveSerializer<KbAddResponse> {
  @override
  final Iterable<Type> types = const [KbAddResponse, _$KbAddResponse];

  @override
  final String wireName = r'KbAddResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAddResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'added';
    yield serializers.serialize(
      object.added,
      specifiedType: const FullType(BuiltList, [FullType(KbAddResponseAddedInner)]),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(BuiltList, [FullType(KbAddResponseSkippedInner)]),
    );
    if (object.embedded != null) {
      yield r'embedded';
      yield serializers.serialize(
        object.embedded,
        specifiedType: const FullType(int),
      );
    }
    yield r'kb';
    yield serializers.serialize(
      object.kb,
      specifiedType: const FullType(KbStatus),
    );
    if (object.ms != null) {
      yield r'ms';
      yield serializers.serialize(
        object.ms,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAddResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAddResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbAddResponseAddedInner)]),
          ) as BuiltList<KbAddResponseAddedInner>;
          result.added.replace(valueDes);
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbAddResponseSkippedInner)]),
          ) as BuiltList<KbAddResponseSkippedInner>;
          result.skipped.replace(valueDes);
          break;
        case r'embedded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.embedded = valueDes;
          break;
        case r'kb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KbStatus),
          ) as KbStatus;
          result.kb.replace(valueDes);
          break;
        case r'ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbAddResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAddResponseBuilder();
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


