//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:chatpanel/src/model/link_partner_file.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_list_files200_response.g.dart';

/// LinkListFiles200Response
///
/// Properties:
/// * [folder] 
/// * [files] 
@BuiltValue()
abstract class LinkListFiles200Response implements Built<LinkListFiles200Response, LinkListFiles200ResponseBuilder> {
  @BuiltValueField(wireName: r'folder')
  String? get folder;

  @BuiltValueField(wireName: r'files')
  BuiltList<LinkPartnerFile> get files;

  LinkListFiles200Response._();

  factory LinkListFiles200Response([void updates(LinkListFiles200ResponseBuilder b)]) = _$LinkListFiles200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LinkListFiles200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LinkListFiles200Response> get serializer => _$LinkListFiles200ResponseSerializer();
}

class _$LinkListFiles200ResponseSerializer implements PrimitiveSerializer<LinkListFiles200Response> {
  @override
  final Iterable<Type> types = const [LinkListFiles200Response, _$LinkListFiles200Response];

  @override
  final String wireName = r'LinkListFiles200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LinkListFiles200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(String),
      );
    }
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [FullType(LinkPartnerFile)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LinkListFiles200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LinkListFiles200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folder = valueDes;
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LinkPartnerFile)]),
          ) as BuiltList<LinkPartnerFile>;
          result.files.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LinkListFiles200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LinkListFiles200ResponseBuilder();
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


