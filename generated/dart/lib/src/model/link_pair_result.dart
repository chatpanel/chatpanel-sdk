//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/link_partner_preview.dart';
import 'package:chatpanel/src/model/link_pair_result_partner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_pair_result.g.dart';

/// LinkPairResult
///
/// Properties:
/// * [uri] - A phone's QR text.
/// * [svg] - The QR as SVG.
/// * [expiresAt] - Epoch ms when the code stops working.
/// * [room] - The device id it pairs.
/// * [confirmed] - Partner pairings — false is a preview only.
/// * [preview] 
/// * [code] - A partner's one-time `cplink1.` code — give it to the partner through a channel you trust.
/// * [kind] 
/// * [partner] 
/// * [scopes] 
/// * [route] 
/// * [host] 
@BuiltValue()
abstract class LinkPairResult implements Built<LinkPairResult, LinkPairResultBuilder> {
  /// A phone's QR text.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// The QR as SVG.
  @BuiltValueField(wireName: r'svg')
  String? get svg;

  /// Epoch ms when the code stops working.
  @BuiltValueField(wireName: r'expiresAt')
  int? get expiresAt;

  /// The device id it pairs.
  @BuiltValueField(wireName: r'room')
  String? get room;

  /// Partner pairings — false is a preview only.
  @BuiltValueField(wireName: r'confirmed')
  bool? get confirmed;

  @BuiltValueField(wireName: r'preview')
  LinkPartnerPreview? get preview;

  /// A partner's one-time `cplink1.` code — give it to the partner through a channel you trust.
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'partner')
  LinkPairResultPartner? get partner;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  @BuiltValueField(wireName: r'route')
  String? get route;

  @BuiltValueField(wireName: r'host')
  String? get host;

  LinkPairResult._();

  factory LinkPairResult([void updates(LinkPairResultBuilder b)]) = _$LinkPairResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPairResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPairResult> get serializer => _$LinkPairResultSerializer();
}

class _$LinkPairResultSerializer implements PrimitiveSerializer<LinkPairResult> {
  @override
  final Iterable<Type> types = const [LinkPairResult, _$LinkPairResult];

  @override
  final String wireName = r'LinkPairResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPairResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.svg != null) {
      yield r'svg';
      yield serializers.serialize(
        object.svg,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.room != null) {
      yield r'room';
      yield serializers.serialize(
        object.room,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.preview != null) {
      yield r'preview';
      yield serializers.serialize(
        object.preview,
        specifiedType: const FullType(LinkPartnerPreview),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.partner != null) {
      yield r'partner';
      yield serializers.serialize(
        object.partner,
        specifiedType: const FullType(LinkPairResultPartner),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType(String),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPairResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkPairResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uri = valueDes;
          break;
        case r'svg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.svg = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'room':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.room = valueDes;
          break;
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.confirmed = valueDes;
          break;
        case r'preview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPartnerPreview),
          ) as LinkPartnerPreview?;
          if (valueDes == null) continue;
          result.preview.replace(valueDes);
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'partner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkPairResultPartner),
          ) as LinkPairResultPartner?;
          if (valueDes == null) continue;
          result.partner.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.scopes.replace(valueDes);
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.route = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkPairResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPairResultBuilder();
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


