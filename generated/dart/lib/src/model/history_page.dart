//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/history_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_page.g.dart';

/// HistoryPage
///
/// Properties:
/// * [ok] 
/// * [total] 
/// * [items] 
@BuiltValue()
abstract class HistoryPage implements Built<HistoryPage, HistoryPageBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'items')
  BuiltList<HistoryItem> get items;

  HistoryPage._();

  factory HistoryPage([void updates(HistoryPageBuilder b)]) = _$HistoryPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryPage> get serializer => _$HistoryPageSerializer();
}

class _$HistoryPageSerializer implements PrimitiveSerializer<HistoryPage> {
  @override
  final Iterable<Type> types = const [HistoryPage, _$HistoryPage];

  @override
  final String wireName = r'HistoryPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(HistoryItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryPageBuilder result,
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
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HistoryItem)]),
          ) as BuiltList<HistoryItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryPageBuilder();
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


