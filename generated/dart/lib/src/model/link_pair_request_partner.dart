//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_pair_request_partner.g.dart';

/// LinkPairRequestPartner
///
/// Properties:
/// * [name] - What the owner calls the partner.
@BuiltValue()
abstract class LinkPairRequestPartner implements Built<LinkPairRequestPartner, LinkPairRequestPartnerBuilder> {
  /// What the owner calls the partner.
  @BuiltValueField(wireName: r'name')
  String get name;

  LinkPairRequestPartner._();

  factory LinkPairRequestPartner([void updates(LinkPairRequestPartnerBuilder b)]) = _$LinkPairRequestPartner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPairRequestPartnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPairRequestPartner> get serializer => _$LinkPairRequestPartnerSerializer();
}

class _$LinkPairRequestPartnerSerializer implements PrimitiveSerializer<LinkPairRequestPartner> {
  @override
  final Iterable<Type> types = const [LinkPairRequestPartner, _$LinkPairRequestPartner];

  @override
  final String wireName = r'LinkPairRequestPartner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPairRequestPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPairRequestPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkPairRequestPartnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkPairRequestPartner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPairRequestPartnerBuilder();
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


