//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_partner_preview.g.dart';

/// LinkPartnerPreview
///
/// Properties:
/// * [partner] 
/// * [scopes] 
/// * [agents] 
/// * [route] 
/// * [host] - The one host the partner's server will connect to.
/// * [folder] - Where its agents will work (with agents).
/// * [lines] - The confirmation as the owner reads it.
@BuiltValue()
abstract class LinkPartnerPreview implements Built<LinkPartnerPreview, LinkPartnerPreviewBuilder> {
  @BuiltValueField(wireName: r'partner')
  String get partner;

  @BuiltValueField(wireName: r'scopes')
  BuiltList<String> get scopes;

  @BuiltValueField(wireName: r'agents')
  bool get agents;

  @BuiltValueField(wireName: r'route')
  String get route;

  /// The one host the partner's server will connect to.
  @BuiltValueField(wireName: r'host')
  String get host;

  /// Where its agents will work (with agents).
  @BuiltValueField(wireName: r'folder')
  String? get folder;

  /// The confirmation as the owner reads it.
  @BuiltValueField(wireName: r'lines')
  BuiltList<String> get lines;

  LinkPartnerPreview._();

  factory LinkPartnerPreview([void updates(LinkPartnerPreviewBuilder b)]) = _$LinkPartnerPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkPartnerPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkPartnerPreview> get serializer => _$LinkPartnerPreviewSerializer();
}

class _$LinkPartnerPreviewSerializer implements PrimitiveSerializer<LinkPartnerPreview> {
  @override
  final Iterable<Type> types = const [LinkPartnerPreview, _$LinkPartnerPreview];

  @override
  final String wireName = r'LinkPartnerPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkPartnerPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'partner';
    yield serializers.serialize(
      object.partner,
      specifiedType: const FullType(String),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'agents';
    yield serializers.serialize(
      object.agents,
      specifiedType: const FullType(bool),
    );
    yield r'route';
    yield serializers.serialize(
      object.route,
      specifiedType: const FullType(String),
    );
    yield r'host';
    yield serializers.serialize(
      object.host,
      specifiedType: const FullType(String),
    );
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(String),
      );
    }
    yield r'lines';
    yield serializers.serialize(
      object.lines,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkPartnerPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkPartnerPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'partner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.partner = valueDes;
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        case r'agents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.agents = valueDes;
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.route = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folder = valueDes;
          break;
        case r'lines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.lines.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkPartnerPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkPartnerPreviewBuilder();
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


