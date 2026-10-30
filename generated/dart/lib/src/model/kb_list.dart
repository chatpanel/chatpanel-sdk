//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:chatpanel/src/model/kb_list_kbs_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_list.g.dart';

/// KbList
///
/// Properties:
/// * [kbs] 
@BuiltValue()
abstract class KbList implements Built<KbList, KbListBuilder> {
  @BuiltValueField(wireName: r'kbs')
  BuiltList<KbListKbsInner> get kbs;

  KbList._();

  factory KbList([void updates(KbListBuilder b)]) = _$KbList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbList> get serializer => _$KbListSerializer();
}

class _$KbListSerializer implements PrimitiveSerializer<KbList> {
  @override
  final Iterable<Type> types = const [KbList, _$KbList];

  @override
  final String wireName = r'KbList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kbs';
    yield serializers.serialize(
      object.kbs,
      specifiedType: const FullType(BuiltList, [FullType(KbListKbsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KbList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KbListKbsInner)]),
          ) as BuiltList<KbListKbsInner>;
          result.kbs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbListBuilder();
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


