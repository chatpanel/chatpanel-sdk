//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kb_add_request.g.dart';

/// One source: `name` + `data`, or `path`, or `url`, or `text`.
///
/// Properties:
/// * [name] - The file name (with `data`); the title for `text` when none is given.
/// * [type] - A type hint (`pdf`, `docx`); the bytes decide.
/// * [data] - The whole file, base64, at most 64 MB decoded.
/// * [path] - A file or folder on this machine (token-gated).
/// * [recursive] - With a folder: walk subfolders.
/// * [include] - With a folder: only these extensions (`*.pdf`, `.md`).
/// * [url] - A public http(s) page, read as Markdown.
/// * [text] - Plain text or Markdown, up to 4 M characters.
/// * [title] 
/// * [reach] - Provenance to record on the document (`internal` narrows a turn that uses it).
@BuiltValue()
abstract class KbAddRequest implements Built<KbAddRequest, KbAddRequestBuilder> {
  /// The file name (with `data`); the title for `text` when none is given.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// A type hint (`pdf`, `docx`); the bytes decide.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The whole file, base64, at most 64 MB decoded.
  @BuiltValueField(wireName: r'data')
  String? get data;

  /// A file or folder on this machine (token-gated).
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// With a folder: walk subfolders.
  @BuiltValueField(wireName: r'recursive')
  bool? get recursive;

  /// With a folder: only these extensions (`*.pdf`, `.md`).
  @BuiltValueField(wireName: r'include')
  BuiltList<String>? get include;

  /// A public http(s) page, read as Markdown.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Plain text or Markdown, up to 4 M characters.
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Provenance to record on the document (`internal` narrows a turn that uses it).
  @BuiltValueField(wireName: r'reach')
  String? get reach;

  KbAddRequest._();

  factory KbAddRequest([void updates(KbAddRequestBuilder b)]) = _$KbAddRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KbAddRequestBuilder b) => b
      ..recursive = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<KbAddRequest> get serializer => _$KbAddRequestSerializer();
}

class _$KbAddRequestSerializer implements PrimitiveSerializer<KbAddRequest> {
  @override
  final Iterable<Type> types = const [KbAddRequest, _$KbAddRequest];

  @override
  final String wireName = r'KbAddRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KbAddRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.recursive != null) {
      yield r'recursive';
      yield serializers.serialize(
        object.recursive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.include != null) {
      yield r'include';
      yield serializers.serialize(
        object.include,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.reach != null) {
      yield r'reach';
      yield serializers.serialize(
        object.reach,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KbAddRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KbAddRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'recursive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.recursive = valueDes;
          break;
        case r'include':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.include.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'reach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reach = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KbAddRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KbAddRequestBuilder();
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


